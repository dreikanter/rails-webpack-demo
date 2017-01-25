class ApplicationController < ActionController::Base
  include Operations::ControllerHelpers

  protect_from_forgery with: :exception
end
