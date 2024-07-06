# == Schema Information
#
# Table name: product_categories
#
#  id         :uuid             not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :uuid             not null
#
# Indexes
#
#  index_product_categories_on_store_id  (store_id)
#
# Foreign Keys
#
#  fk_rails_...  (store_id => stores.id)
#
class ProductCategory < ApplicationRecord
  has_paper_trail

  include Sluggable
  friendly_slug_scope to_slug: :name

  # associations
  belongs_to :store
  has_many :products

  # validations
  validates :name, presence: true, uniqueness: true

  # callbacks
  before_validation :downcase_name

  # private methods
  private

  def downcase_name
    self.name = name.downcase
  end
end
