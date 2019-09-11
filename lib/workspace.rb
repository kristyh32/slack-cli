require_relative 'user'
require_relative 'channel'

class Workspace
  
  attr_reader :users, :channels, :selected
  
  def initialize
    @users = User.get
    @channels = Channel.get
    @selected = nil
    
  end
  
  def select_channel(name_or_id)
    channel = channels.find {|channel| channel.slack_id == name_or_id}
    if channel == nil
      channel = channels.find {|channel| channel.name == name_or_id}
    end
    if channel == nil
      raise ArgumentError.new("Channel does not exist")
    end
    @selected = channel
  end
  
  def select_user(name_or_id)
    user = users.find {|user| user.slack_id == name_or_id}
    if user == nil
      user = users.find {|user| user.name == name_or_id}
    end
    if user == nil
      raise ArgumentError.new("User does not exist")
    end
    @selected = user
  end
  
  def show_details
    
  end
  
  def send_message
    
  end
end