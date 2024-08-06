module StoreHelper
  def store_cards
    [
      {
        title: "#{@current_month_name} Sales (#{@currency})",
        data: "#{currency_format @current_month_sales.to_i}",
        icon: 'fa-solid fa-coins',
        path: sales_path
      },
      {
        title: "#{@current_month_name} Stock (#{@currency})",
        data: "#{currency_format @current_month_stock.to_i}",
        icon: 'fa-solid fa-boxes-stacked',
        path: stocks_path
      },
      {
        title: "#{@current_month_name} Expenses (#{@currency})",
        data: "#{currency_format @current_month_expenses.to_i}",
        icon: 'fa-solid fa-money-bill-wave',
        path: expenses_path
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