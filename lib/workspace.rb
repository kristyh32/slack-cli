require_relative 'user'
require_relative 'channel'

class Workspace
  
  attr_reader :users, :channels, :selected
  
  def initialize
    @users = Users.get # to-do
    @channels = Channels.get # to-do
    @selected = nil
    
  end
  
  def select_channel
    
  end
  
  def select_user
    
  end
  
  def show_details
    
  end
  
  def send_message
    
  end
end