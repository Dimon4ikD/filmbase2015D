module ApplicationHelper
  def error_messages_for(object)
    render 'error_messages_for', object: object
  end


  # def addwin
  #   @stats = Stats.find(1)
  #   @stats.update_attribute(:wins, @stats.wins+1)
  # end

  def click
    @banner = Banner.find(params[:banner])
    @banner.update_attribute(:clicks, @banner.clicks+1)
  end

end
