# == Schema Information
#
# Table name: expenses
#
#  id         :uuid             not null, primary key
#  amount     :float
#  date       :datetime
#  frequency  :integer          default("once")
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  day_id     :uuid             not null
#  store_id   :uuid             not null
#
# Indexes
#
#  index_expenses_on_day_id    (day_id)
#  index_expenses_on_store_id  (store_id)
#
# Foreign Keys
#
#  fk_rails_...  (day_id => days.id)
#  fk_rails_...  (store_id => stores.id)
#
require "test_helper"

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
