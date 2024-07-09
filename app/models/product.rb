# == Schema Information
#
# Table name: products
#
#  id                  :uuid             not null, primary key
#  name                :string
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
  has_paper_trail

  include Sluggable
  friendly_slug_scope to_slug: :name

  # associations
  belongs_to :product_category

  # callbacks
  before_validation :downcase_name

  # private methods
  private

  def downcase_name
    self.name = name.downcase
  end
end
