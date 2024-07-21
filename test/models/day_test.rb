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
require "test_helper"

class DayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
