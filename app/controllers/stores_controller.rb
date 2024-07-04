class StoresController < ApplicationController

  def new
    @store = Store.new
    @store.users.build
  end

  def create
    @store = Store.new(store_params)

    respond_to do |format|
      if @store.save
        @store.users.each { |user| user.update(role: 'store_admin') }
        format.html { redirect_to root_path, notice: "Store was successfully created."}
      else
        format.html { render :new, status: :unprocessable_entity}
      end
    end
  end

  private

  def store_params
    params.require(:store).permit(:name, :location, :logo, users_attributes: [:name, :email, :phone, :password])
  end
end