# == Schema Information
#
# Table name: expenses
#
#  id              :uuid             not null, primary key
#  amount          :float
#  date            :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  day_id          :uuid             not null
#  expense_item_id :uuid             not null
#
# Indexes
#
#  index_expenses_on_day_id           (day_id)
#  index_expenses_on_expense_item_id  (expense_item_id)
#
# Foreign Keys
#
#  fk_rails_...  (day_id => days.id)
#  fk_rails_...  (expense_item_id => expense_items.id)
#
class Expense < ApplicationRecord
  has_paper_trail

  # asscociations

  belongs_to :expense_item
  belongs_to :day

  # validations

  validates :day, presence: true
  validates :amount, presence: true
end
