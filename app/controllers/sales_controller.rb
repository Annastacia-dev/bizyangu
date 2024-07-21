class SalesController < ApplicationController

  before_action :set_day, only: %i[create]

  def create
    @sale = @store.sales.new(sale_params)
    @sale.day = @day

    respond_to do |format|
      if @sale.save
        format.html { redirect_to day_path(@day.date), notice: "Sale was successfully created."}
      else
        format.html { render :new, status: :unprocessable_entity}
      end
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:product_id, :day_id, :buying_price, :selling_price, :date)
  end

  def set_day
    @day = @store.days.find_or_create_by(date: params[:sale][:date])
  end
end