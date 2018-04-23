# == Schema Information
#
# Table name: rentals
#
#  id             :integer          not null, primary key
#  bike_id        :integer
#  user_id        :integer
#  start_time     :datetime
#  end_time       :datetime
#  start_stand_id :integer
#  end_stand_id   :integer
#  cost           :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Rental < ApplicationRecord
  belongs_to :bike, :optional =>true
  belongs_to :user, :optional =>true
  belongs_to :start_stand, :class_name => "Bikestand", optional: true,
    :foreign_key => "start_stand_id"
  belongs_to :end_stand, :class_name => "Bikestand", optional: true,
    :foreign_key => "end_stand_id"

  def duration
    if end_time
      ((end_time - start_time) / 3600).ceil # Duration in hours
    else
      ((Time.now - start_time) / 3600).ceil # Hours
    end
  end
end
