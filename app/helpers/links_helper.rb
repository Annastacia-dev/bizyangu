module LinksHelper

  def shared_links
    [
      { path: root_path, icon: 'fa-solid fa-house', title: 'dashboard' },
      { path: product_categories_path, icon: 'fa-solid fa-layer-group', title: 'categories' },
      { path: products_path, icon: 'fa-solid fa-list', title: 'products' },
    ]
  end

  def day_links
    [
      { path: new_sale_path, icon_class: 'fa-solid fa-coins', menu_text: 'add sale', type: 'drawer', view: 'sales/form' },
      { path: new_expense_path, icon_class: 'fa-solid fa-money-bills', menu_text: 'add expense' },
      { path: new_stock_path, icon_class: 'fa-solid fa-boxes-stacked', menu_text: 'add stock' }
    ]
  end

end