# frozen_string_literal: true

# because idk where else to put this...
class ContactController < ApplicationController
  # does this work? send mail
  def send_contact
    email = params[:email]
    name = params[:name]
    message = params[:message]
    ContactMailer.contact(email, name, message).deliver
  end
end
