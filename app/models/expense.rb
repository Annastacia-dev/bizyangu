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
class Expense < ApplicationRecord
  # --- associations ---
  belongs_to :store
  belongs_to :day

  # enums
  enum frequency:{
    once: 0,
    daily: 1,
    weekly: 2,
    monthly: 3,
    yearly: 4
  }
end
