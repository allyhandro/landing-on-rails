# frozen_string_literal: true

# base App controller
class ApplicationController < ActionController::Base
  # Learning about CSRF in Rails
  protect_from_forgery with: :exception
end
