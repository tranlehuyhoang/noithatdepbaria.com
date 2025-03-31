<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BlogResource\Pages;
use App\Filament\Resources\BlogResource\RelationManagers;
use App\Models\Blog;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class BlogResource extends Resource
{
    protected static ?string $model = Blog::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationGroup = 'Quản lý bài viết';
    public static function getPluralModelLabel(): string
    {
        return 'Danh sách bài viết';
    }
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Tabs::make('Thông tin dịch vụ')
                    ->tabs([
                        Forms\Components\Tabs\Tab::make('Thông tin cơ bản')
                            ->schema([
                                Forms\Components\FileUpload::make('banner')
                                    ->label('Ảnh banner')
                                    ->required()
                                    ,

                                    Forms\Components\TextInput::make('title')
                                       ->label('Tên bài viết')
                                       ->required()
                                       ->live(onBlur: true)
                                       ->afterStateUpdated(
                                           fn(string $operation, $state, Forms\Set $set) =>
                                           $operation === 'create' ? $set('slug', Str::slug($state)) : null
                                       )
                                       ->maxLength(255),
                                   Forms\Components\TextInput::make('slug')
                                       ->label('Slug')
                                       ->dehydrated()
                                       ->unique(Blog::class, ignoreRecord: true)
                                       ->required()
                                       ->maxLength(255),

                                Forms\Components\TextInput::make('view')
                                    ->label('Lượt xem')
                                    ->required()
                                    ->numeric()
                                    ->default(0),
                            ]),

                        Forms\Components\Tabs\Tab::make('Mô tả')
                            ->schema([
                                Forms\Components\Textarea::make('short_desc')
                                    ->label('Mô tả ngắn')
                                    ->columnSpanFull(),

                                Forms\Components\RichEditor::make('description')
                                    ->label('Mô tả chi tiết')
                                    ->columnSpanFull(),
                            ]),
                    ])->columnSpanFull(),
            ]);
    }

        public static function table(Table $table): Table
        {
            return $table
                ->columns([
                    Tables\Columns\ImageColumn::make('banner')
                    ->label('Ảnh banner')
                    ->searchable(),
                    Tables\Columns\TextColumn::make('title')
                        ->label('Tên bài viết')
                        ->searchable(),

                    Tables\Columns\TextColumn::make('view')
                        ->label('Lượt xem')
                        ->numeric()
                        ->sortable(),
                    Tables\Columns\TextColumn::make('created_at')
                        ->label('Ngày tạo')
                        ->dateTime()
                        ->sortable()
                      ,
                    Tables\Columns\TextColumn::make('updated_at')
                        ->label('Ngày cập nhật')
                        ->dateTime()
                        ->sortable()
                        ->toggleable(isToggledHiddenByDefault: true),
                ])
                ->filters([
                    //
                ])
               ->actions([
                    Tables\Actions\ActionGroup::make([
                        Tables\Actions\ViewAction::make()
                            ->label('Xem'), // Đổi nhãn sang tiếng Việt
                        Tables\Actions\EditAction::make()
                            ->label('Chỉnh Sửa'), // Đổi nhãn sang tiếng Việt
                        Tables\Actions\DeleteAction::make()
                            ->label('Xóa'), // Đổi nhãn sang tiếng Việt
                    ])
                ])
                ->bulkActions([
                    Tables\Actions\BulkActionGroup::make([
                        Tables\Actions\DeleteBulkAction::make()
                            ->label('Xóa'), // Đổi nhãn sang tiếng Việt
                    ]),
                ]);
        }
        public static function getNavigationBadge(): ?string
        {
            return static::getModel()::count();
        }
    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListBlogs::route('/'),
            'create' => Pages\CreateBlog::route('/create'),
            'view' => Pages\ViewBlog::route('/{record}'),
            'edit' => Pages\EditBlog::route('/{record}/edit'),
        ];
    }
}
