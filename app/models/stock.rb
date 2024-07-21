# == Schema Information
#
# Table name: stocks
#
#  id         :uuid             not null, primary key
#  cost       :string
#  date       :datetime
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  day_id     :uuid             not null
#  product_id :uuid             not null
#
# Indexes
#
#  index_stocks_on_day_id      (day_id)
#  index_stocks_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (day_id => days.id)
#  fk_rails_...  (product_id => products.id)
#
class Stock < ApplicationRecord
  # --- associations ---
  belongs_to :product
  belongs_to :day
end
