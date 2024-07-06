# == Schema Information
#
# Table name: products
#
#  id                  :uuid             not null, primary key
#  description         :text
#  name                :string
#  price               :string
#  slug                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_category_id :uuid             not null
#
# Indexes
#
#  index_products_on_product_category_id  (product_category_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_category_id => product_categories.id)
#
class Product < ApplicationRecord
  belongs_to :product_category
end
