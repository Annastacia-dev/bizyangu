class StocksController < ApplicationController

  before_action :set_day, only: %i[create]

  def create
    @stock = @store.stocks.new(stock_params)
    @stock.day = @day

    respond_to do |format|
      if @stock.save
        format.html { redirect_to day_path(@day.date), notice: "Stock was successfully created."}
      else
        format.html { render :new, status: :unprocessable_entity}
      end
    end
  end

  private

  def stock_params
    params.require(:stock).permit(:product_id, :day_id, :cost, :quantity, :date)
  end

  def set_day
    @day = @store.days.find_or_create_by(date: params[:stock][:date])
  end

end