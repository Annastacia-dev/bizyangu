module LinksHelper

  def shared_links
    [
      { path: root_path, icon: 'fa-solid fa-house', title: 'dashboard' }
    ]
  end

  def store_links
    [
      { path: product_categories_path, icon: 'fa-solid fa-layer-group', title: 'categories' },
      { path: products_path, icon: 'fa-solid fa-list', title: 'products' },
      { path: sales_path, icon: 'fa-solid fa-coins', title: 'sales' },
      { path: stocks_path, icon: 'fa-solid fa-boxes-stacked', title: 'stocks' },
      { path: expenses_path, icon: 'fa-solid fa-money-bill-wave', title: 'expenses' }
    ]
  end

  def admin_links
    [
      { path: stores_path, icon: 'fa-solid fa-store', title: 'stores' },
  ]
  end

  def day_links
    [
      { path: new_sale_path, icon_class: 'fa-solid fa-coins', menu_text: 'add sale', type: 'drawer', view: 'sales/form' },
      { path: new_expense_path, icon_class: 'fa-solid fa-money-bill-wave', menu_text: 'add expense', type: 'drawer', view: 'expenses/form' },
      { path: new_stock_path, icon_class: 'fa-solid fa-boxes-stacked', menu_text: 'add stock', type: 'drawer', view: 'stocks/form' },
      { path: new_expense_item_path, icon_class: 'fa-solid fa-bag-shopping', menu_text: 'add expense item', type: 'drawer', view: 'expense_items/form' }
    ]
  end

end