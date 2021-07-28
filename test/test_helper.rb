ENV['RAILS_ENV'] ||= 'test'
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  include ApplicationHelper
  
    def is_logged_in?
    !current_user.nil?
    end
   
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end  

  
  
end
