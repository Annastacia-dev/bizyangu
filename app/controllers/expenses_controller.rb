class ExpensesController < ApplicationController

  before_action :set_day, only: %i[create]
  before_action :set_expense, except: %i[index create]

  def index
    @current_month = params[:month] ? Date.parse(params[:month]) : Date.current.beginning_of_month
    @expenses = @store.expenses.where(date: @current_month..@current_month.end_of_month).group_by { |expense| expense.date.to_date }
  end

  def create
    @expense = @store.expenses.new(expense_params)
    @expense.day = @day

    respond_to do |format|
      if @expense.save
        format.html { redirect_to root_path, notice: "Expense was successfully created."}
      else
        @errors = @expense.errors.full_messages.join(',')
        format.html { redirect_to root_path, alert: @errors}
      end
    end
  end

  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to day_path(@expense.day.date), notice: "Expense was successfully updated."}
      else
        format.html { render :edit, status: :unprocessable_entity}
      end
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:amount, :date, :expense_item_id)
  end

  def set_expense
    @expense = @store.expenses.find(params[:id])
  end

  def set_day
    @day = @store.days.find_or_create_by(date: params[:expense][:date])
  end
end