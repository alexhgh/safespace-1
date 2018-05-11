class ChatController < ApplicationController
  before_action :authenticate_user!

  def index
    # Create new array of open sessions if previously opened sessions is empty
    session[:conversations] ||= []
    # Find all users except current user
    @users = User.all.where.not(id: current_user)
    # Retrieve all conversations by current user and return only conversations that are in open sessions array
    @conversations = Conversation.includes(:recipient, :messages).find(session[:conversations])
  end

end
