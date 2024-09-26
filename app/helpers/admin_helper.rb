module AdminHelper
  def admin_cards
    [
      {
        title: "Stores",
        data: "#{@stores.size}",
        icon: 'fa-solid fa-store',
        path: stores_path
      },
    ]
  end
end