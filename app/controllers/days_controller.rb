class DaysController < ApplicationController

  before_action :find_day

  def show
  end

  private

  def find_day
    @day = Day.find_or_create_by(date: params[:id])
  end
end