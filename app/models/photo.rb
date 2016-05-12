# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  room_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string
#

class Photo < ActiveRecord::Base
  belongs_to :room

  mount_uploader :image, ImageUploader

end
