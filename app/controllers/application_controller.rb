class ApplicationController < ActionController::Base
  before_action :set_store, if: :current_user

  private

  def set_store
    if current_user.store_admin?
      @store = current_user.store
      @currency = @store.currency
      @products = @store.products.order(:name)
      @sales = @store.sales
      @stocks = @store.stocks
    end
  end
end
