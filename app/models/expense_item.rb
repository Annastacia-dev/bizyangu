# == Schema Information
#
# Table name: expense_items
#
#  id         :uuid             not null, primary key
#  amount     :float
#  frequency  :integer          default("daily")
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :uuid             not null
#
# Indexes
#
#  index_expense_items_on_store_id  (store_id)
#
# Foreign Keys
#
#  fk_rails_...  (store_id => stores.id)
#
class ExpenseItem < ApplicationRecord
  # --- associations ---
  belongs_to :store

  # enums
  enum frequency:{
    daily: 0,
    weekly: 1,
    monthly: 2,
    yearly: 3
  }

  # associations
  has_many :expenses

  # callbacks
  before_validation :downcase_title

  # validations
  validates :title, uniqueness: { scope: :store_id }

  # class methods
  def self.frequency_options
    frequencies.map { |k, _v| [k.humanize, k] }
  end

  # instance methods

  # private methods
  def downcase_title
    self.title = title.downcase
  end
end
