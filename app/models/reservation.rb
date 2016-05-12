# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  room_id    :integer
#  start_date :datetime
#  end_date   :datetime
#  price      :integer
#  total      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
end
