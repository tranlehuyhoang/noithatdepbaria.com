<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProductResource\Pages;
use App\Filament\Resources\ProductResource\RelationManagers;
use App\Models\Category;
use App\Models\Product;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class ProductResource extends Resource
{
    protected static ?string $model = Product::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationGroup = 'Quản lý sản phẩm';
    public static function getPluralModelLabel(): string
    {
        return 'Danh sách sản phẩm';
    }
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Tabs::make('Thông tin sản phẩm')
                    ->tabs([
                        Forms\Components\Tabs\Tab::make('Chi tiết')
                            ->schema([

                                   Forms\Components\TextInput::make('title')
                                   ->label('Tên sản phẩm')
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
                                   ->unique(Product::class, ignoreRecord: true)
                                   ->required()
                                   ->maxLength(255),

                                Forms\Components\TextInput::make('view')
                                    ->label('Lượt xem')
                                    ->required()
                                    ->numeric()
                                    ->default(0),


                            ]),
                        Forms\Components\Tabs\Tab::make('Hình ảnh')
                            ->schema([
                                Forms\Components\FileUpload::make('images')
                                    ->label('Hình ảnh')
                                    ->multiple()
                                    ->imageEditor()
                            ]),

                        Forms\Components\Tabs\Tab::make('Mô tả')
                            ->schema([
                                Forms\Components\Textarea::make('short_dec')
                                ->label('Mô tả ngắn')
                                ->columnSpanFull(),

                            Forms\Components\RichEditor::make('description')
                                ->label('Mô tả')
                                ->columnSpanFull(),
                            ]),
                        Forms\Components\Tabs\Tab::make('Danh mục')
                            ->schema([
                                Forms\Components\Select::make('category_id')
                                    ->label('Danh mục')
                                    ->required()
                                    ->options(Category::all()->pluck('title', 'id'))
                                    ->searchable(),
                            ]),
                    ])->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('images')
                    ->label('Hình ảnh')
                    ->searchable(),

                Tables\Columns\TextColumn::make('title')
                    ->label('Tên sản phẩm')
                    ->searchable(),
                Tables\Columns\TextColumn::make('view')
                    ->label('Lượt xem')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('category.title')
                    ->label('Danh mục')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
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
            'index' => Pages\ListProducts::route('/'),
            'create' => Pages\CreateProduct::route('/create'),
            'view' => Pages\ViewProduct::route('/{record}'),
            'edit' => Pages\EditProduct::route('/{record}/edit'),
        ];
    }
}
