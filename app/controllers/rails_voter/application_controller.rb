require_dependency "decent_exposure"
require_dependency "haml-rails"
require_dependency "draper"

module RailsVoter
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  end
end
