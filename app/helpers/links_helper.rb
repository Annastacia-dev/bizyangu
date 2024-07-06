module LinksHelper

  def shared_links
    [
      { path: root_path, icon: 'fa-solid fa-house', title: 'dashboard' },
      { path: product_categories_path, icon: 'fa-solid fa-layer-group', title: 'categories' },
      { path: products_path, icon: 'fa-solid fa-list', title: 'products' },
    ]
  end

end