module DaysHelper
  def day_cards
    [
      {
        title: "Stock (#{@currency})",
        data: "#{currency_format @stock}",
        icon: 'fa-solid fa-boxes-stacked',
        path: sales_path
      },
      {
        title: "Sales (#{@currency})",
        data: "#{currency_format @sales}",
        icon: 'fa-solid fa-coins',
        path: sales_path
      },
      {
        title: "Expenses (#{@currency})",
        data: "#{currency_format @expenses}",
        icon: 'fa-solid fa-money-bills',
        path: expenses_path
      },
    ]
  end
end