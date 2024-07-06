class ApplicationController < ActionController::Base
  before_action :set_store, if: :current_user

  private

  def set_store
    if current_user.store_admin?
      @store = current_user.store
    end
  end
end
