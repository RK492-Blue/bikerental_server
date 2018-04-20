# == Schema Information
#
# Table name: bikestands
#
#  id             :integer          not null, primary key
#  location       :text
#  bikestand_long :text
#  bikestand_lat  :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Bikestand < ApplicationRecord
  has_many :bikes
end
