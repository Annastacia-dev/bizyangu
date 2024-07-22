class HomeController < ApplicationController
  def index
    set_dates
    set_calendar
    if @store
      calculate_current_month_sales
    end
  end

  private

  def set_dates
    @start_date = params[:start_date] ? Date.parse(params[:start_date]) : Date.today
    @current_month = @start_date.beginning_of_month
    @prev_month = @current_month.prev_month
    @next_month = @current_month.next_month

    @current_month_start = @current_month.beginning_of_month
    @current_month_end = @current_month.end_of_month
  end

  def set_calendar
    @start_of_calendar = @current_month.beginning_of_month.beginning_of_week(:sunday)
    @end_of_calendar = @current_month.end_of_month.end_of_week(:sunday)
    @days = (@start_of_calendar..@end_of_calendar).to_a
    @current_month_name = @current_month.strftime("%b")
  end

  def calculate_current_month_sales
    @current_month_sales = @sales.where(date: @current_month_start..@current_month_end).sum(:selling_price)
    @current_month_stock = @stocks.where(date: @current_month_start..@current_month_end).sum(:cost)
  end

end