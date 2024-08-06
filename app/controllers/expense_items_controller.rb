class ExpenseItemsController < ApplicationController

  def create
    @expense_item = @store.expense_items.new(expense_item_params)

    respond_to do |format|
      if @expense_item.save
        format.html { redirect_to root_path, notice: "Expense item was successfully created."}
      else
        @errors = @expense_item.errors.full_messages.join(',')
        format.html { redirect_to root_path, alert: @errors}
      end
    end
  end

  private

  def expense_item_params
    params.require(:expense_item).permit(:amount, :frequency, :title)
  end
end