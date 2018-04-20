# == Schema Information
#
# Table name: bikes
#
#  id              :integer          not null, primary key
#  bike_serial_num :string
#  bikestand_id    :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Bike < ApplicationRecord
end
