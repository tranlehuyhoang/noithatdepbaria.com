<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProjectResource\Pages;
use App\Filament\Resources\ProjectResource\RelationManagers;
use App\Models\Project;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class ProjectResource extends Resource
{
    protected static ?string $model = Project::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationGroup = 'Quản lý dự án';
    public static function getPluralModelLabel(): string
    {
        return 'Danh sách dự án';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Tabs::make('Dự án')
                    ->tabs([
                        Forms\Components\Tabs\Tab::make('Thông tin chung')
                            ->schema([
                                Forms\Components\FileUpload::make('banner')
                                    ->label('Ảnh banner')
                                    ->required()
                                   ,

                                   Forms\Components\TextInput::make('title')
                                   ->label('Tên dự án')
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
                                   ->unique(Project::class, ignoreRecord: true)
                                   ->required()
                                   ->maxLength(255),
                                Forms\Components\TextInput::make('address')
                                    ->label('Địa chỉ')
                                    ->required()
                                    ->maxLength(255),
                                Forms\Components\TextInput::make('view')
                                    ->label('Lượt xem')
                                    ->required()
                                    ->maxLength(255),
                            ]),
                        Forms\Components\Tabs\Tab::make('Nội dung')
                            ->schema([
                                Forms\Components\Textarea::make('short_desc')
                                    ->label('Mô tả ngắn')
                                    ->required()
                                    ->columnSpanFull(),

                                Forms\Components\RichEditor::make('description')
                                    ->label('Nội dung')
                                    ->required()
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
                    ->label('Tên dự án')
                    ->searchable(),
                Tables\Columns\TextColumn::make('view')
                    ->label('Lượt xem')
                    ->searchable(),
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
            'index' => Pages\ListProjects::route('/'),
            'create' => Pages\CreateProject::route('/create'),
            'view' => Pages\ViewProject::route('/{record}'),
            'edit' => Pages\EditProject::route('/{record}/edit'),
        ];
    }
}
