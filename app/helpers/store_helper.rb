module StoreHelper
  def store_cards
    [
      {
        title: "Total Sales (#{@currency})",
        data: @store.sales.sum(&:selling_price).to_i,
        icon: 'fa-solid fa-coins',
        path: sales_path
      },
      {
        title: "Total Stock (#{@currency})",
        data: @store.stocks.sum(&:cost).to_i,
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