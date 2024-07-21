# == Schema Information
#
# Table name: days
#
#  id         :uuid             not null, primary key
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Day < ApplicationRecord
end
