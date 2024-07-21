class HomeController < ApplicationController
  def index
    @start_date = params[:start_date] ? Date.parse(params[:start_date]) : Date.today
    @current_month = @start_date.beginning_of_month
    @days = (@current_month..@current_month.end_of_month).to_a
    @prev_month = @current_month.prev_month
    @next_month = @current_month.next_month
  end
end