class SalesController < ApplicationController

  before_action :set_day, only: %i[create]
  before_action :find_sale, except: %i[index create]

  def index
    @current_month = params[:month] ? Date.parse(params[:month]) : Date.current.beginning_of_month
    @sales = @store.sales.where(date: @current_month..@current_month.end_of_month).group_by { |sale| sale.date.to_date }
  end

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

  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to day_path(@sale.day.date), notice: "Sale was successfully updated."}
      else
        format.html { render :edit, status: :unprocessable_entity}
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

  def find_sale
    @sale = @store.sales.find(params[:id])
  end
end