# == Schema Information
#
# Table name: stores
#
#  id         :uuid             not null, primary key
#  contact    :string
#  currency   :string           default("KES")
#  location   :string
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Store < ApplicationRecord
  has_paper_trail
  has_one_attached :logo

  include Sluggable
  friendly_slug_scope to_slug: :name

  # validations
  validates :name, presence: true, uniqueness: true

  # associations
  has_many :users, dependent: :destroy
  has_many :product_categories, dependent: :destroy
  has_many :products, through: :product_categories, dependent: :destroy
  has_many :days, dependent: :destroy
  has_many :sales, through: :days, dependent: :destroy
  has_many :stocks, through: :days, dependent: :destroy
  has_many :expenses, dependent: :destroy
  accepts_nested_attributes_for :users, allow_destroy: true

  # callbacks
  before_validation :downcase_name

  # private methods
  private

  def downcase_name
    self.name = name.downcase
  end
end
