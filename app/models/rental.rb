# == Schema Information
#
# Table name: rentals
#
#  id            :integer          not null, primary key
#  bike_id       :integer
#  user_id       :integer
#  start_time    :datetime
#  end_time      :datetime
#  start_station :text
#  end_station   :text
#  cost          :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Rental < ApplicationRecord
end
