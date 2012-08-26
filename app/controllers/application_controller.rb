class ApplicationController < ActionController::Base
  protect_from_forgery

  layout Proc.new{ |controller| controller_name == 'home' ? 'application' : 'fancybox' }
end
