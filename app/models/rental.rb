# == Schema Information
#
# Table name: rentals
#
#  id             :integer          not null, primary key
#  bike_id        :integer
#  user_id        :integer
#  start_time     :datetime
#  end_time       :datetime
#  start_stand_id :text
#  end_stand_id   :text
#  cost           :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Rental < ApplicationRecord
  belongs_to :start_stand, :class_name => 'Bikestand',
    :foreign_key => "start_stand_id"
  belongs_to :end_stand, :class_name => 'Bikestand',
    :foreign_key => "end_stand_id", :optional => true
# *******************************

  belongs_to :bike, :optional =>true
  belongs_to :user, :optional =>true
end
