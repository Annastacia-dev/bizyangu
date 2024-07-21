# == Schema Information
#
# Table name: days
#
#  id         :uuid             not null, primary key
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :uuid             not null
#
# Indexes
#
#  index_days_on_store_id  (store_id)
#
# Foreign Keys
#
#  fk_rails_...  (store_id => stores.id)
#
class Day < ApplicationRecord
  # --- associations ---
  belongs_to :store
  has_many :stocks, dependent: :destroy
  has_many :sales, dependent: :destroy
  has_many :expenses, dependent: :destroy

  # --- validations ---
  validates :date, presence: true, uniqueness: { scope: :store_id }
end
