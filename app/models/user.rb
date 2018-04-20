# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :text
#  user_type  :text
#  email      :text
#  password   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :rentals
  has_many :bikes, through: :rentals
end
