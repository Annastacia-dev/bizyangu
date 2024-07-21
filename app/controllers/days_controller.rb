class DaysController < ApplicationController

  before_action :find_day

  def show
    @stock = @day.stocks.sum(&:cost)
    @sales = @day.sales.sum(&:selling_price)
    @expenses = @day.expenses.sum(&:amount)
  end

  private

  def find_day
    @day = @store.days.find_or_create_by(date: params[:id])
  end
end