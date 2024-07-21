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
require "test_helper"

class StoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
