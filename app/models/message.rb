# == Schema Information
#
# Table name: messages
#
#  id              :integer          not null, primary key
#  content         :text
#  conversation_id :integer
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :user

  validates_presence_of :content, :conversation_id, :user_id

  def message_time
    created_at.strftime("%v")
  end
end
