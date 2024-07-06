module StoreHelper
  def cards
    [
      {
        title: 'Categories',
        data: @store.product_categories.size,
        icon: 'fa-solid fa-layer-group',
        path: product_categories_path
      },
      {
        title: 'Products',
        data: @store.products.size,
        icon: 'fa-solid fa-list',
        path: products_path
      }
    ]
  end
end