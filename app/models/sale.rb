# == Schema Information
#
# Table name: sales
#
#  id            :uuid             not null, primary key
#  buying_price  :string
#  date          :datetime
#  selling_price :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  day_id        :uuid             not null
#  product_id    :uuid             not null
#
# Indexes
#
#  index_sales_on_day_id      (day_id)
#  index_sales_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (day_id => days.id)
#  fk_rails_...  (product_id => products.id)
#
class Sale < ApplicationRecord
  # --- associations ---
  belongs_to :product
  belongs_to :day
end
