class ConversationsController < ApplicationController
    before_action :authenticate_user!

    def index
      @users = User.all
    end

  private

  def conversations_params
    params.permit(:sender_id, :recipient_id)
  end
end
