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
  belongs_to :bikestand, :optional => true
<<<<<<< HEAD
  validates :bikestand, numericality: { greater_than_or_equal_to: 1 }
=======
  # *******************************
  has_many :rentals
  # *******************************

>>>>>>> a700a0262119f2a4fc4a48287b834665116f4a7b
end
