# == Schema Information
#
# Table name: stores
#
#  id         :uuid             not null, primary key
#  contact    :string
#  location   :string
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Store < ApplicationRecord
  has_paper_trail

  include Sluggable
  friendly_slug_scope to_slug: :name

  # validations
  validates :name, presence: true, uniqueness: true
end
