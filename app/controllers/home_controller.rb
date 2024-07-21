class HomeController < ApplicationController
  def index
    @start_date = params[:start_date] ? Date.parse(params[:start_date]) : Date.today
    @current_month = @start_date.beginning_of_month
    @prev_month = @current_month.prev_month
    @next_month = @current_month.next_month

    @start_of_calendar = @current_month.beginning_of_month.beginning_of_week(:sunday)
    @end_of_calendar = @current_month.end_of_month.end_of_week(:sunday)
    @days = (@start_of_calendar..@end_of_calendar).to_a

    @current_month_start = @current_month.beginning_of_month
    @current_month_end = @current_month.end_of_month
  end

end