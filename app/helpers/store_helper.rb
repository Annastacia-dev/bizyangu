module StoreHelper
  def cards
    [
      {
        title: 'Sales',
        data: @store.sales.size,
        icon: 'fa-solid fa-coins',
        path: sales_path
      },
      {
        title: 'Stock',
        data: @store.stocks.size,
        icon: 'fa-solid fa-boxes-stacked',
        path: sales_path
      },
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