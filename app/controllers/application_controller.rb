class ApplicationController < ActionController::Base
  before_action :set_store, if: :current_user

  private


  def after_sign_in_path_for(resource)
    sign_in(resource, remember_me: true)
    super(resource)
  end

  def set_store
    if current_user.store_admin?
      @store = current_user.store
      @currency = @store.currency
      @products = @store.products.order(:name)
      @sales = @store.sales
      @stocks = @store.stocks
      @expenses = @store.expenses
    end
  end
end
