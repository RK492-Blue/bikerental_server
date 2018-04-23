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
<<<<<<< HEAD
  belongs_to :start_stand, :class_name => "Bikestand",
    :foreign_key => "start_stand_id"
  belongs_to :end_stand, :class_name => "Bikestand",
=======
<<<<<<< HEAD
  belongs_to :start_stand, :class_name => 'Bikestand',
    :foreign_key => "start_stand_id"
  belongs_to :end_stand, :class_name => 'Bikestand',
    :foreign_key => "end_stand_id", :optional => true
# *******************************

  belongs_to :bike, :optional =>true
  belongs_to :user, :optional =>true
=======
  belongs_to :start_stand, :class_name => "Bikestand", optional: true,
    :foreign_key => "start_stand_id"
  belongs_to :end_stand, :class_name => "Bikestand", optional: true,
>>>>>>> a700a0262119f2a4fc4a48287b834665116f4a7b
    :foreign_key => "end_stand_id"
>>>>>>> 2ce669fb50f4b19c49c47817643ea8fa644bf2e6
end
