require "test/functional/controller_helper"

ENV['RAILS_ENV'] ||= 'test'



class ActiveSupport::TestCase
  fixtures :all
  include ApplicationHelper
  
  # Returns true if a test user is logged in.
  
  def is_logged_in?
    !session[:user_id].nil?
  end
  
  
  
end