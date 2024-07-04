class StoreController < ApplicationController

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)

    respond_to do |format|
      if @store.save
        format.html { redirect_to root_path, notice: 'Successfully signed up'}
      else
        format.html { render :new, status: :unprocessable_entity}
      end
    end
  end

  private

  def store_params
    paams.require(:store).permit(:name)
end