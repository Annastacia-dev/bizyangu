class ExpensesController < ApplicationController

  before_action :set_day, only: %i[create]

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

  private

  def expense_params
    params.require(:expense).permit(:amount, :date, :expense_item_id)
  end

  def set_day
    @day = @store.days.find_or_create_by(date: params[:expense][:date])
  end
end