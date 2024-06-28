# == Schema Information
#
# Table name: stores
#
#  id         :uuid             not null, primary key
#  contact    :string
#  location   :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Store < ApplicationRecord
end
