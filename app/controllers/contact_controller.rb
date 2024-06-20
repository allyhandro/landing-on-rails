# frozen_string_literal: true

# because idk where else to put this...
class ContactController < ApplicationController
  # does this work? send mail
  def send_contact
    contact_info = params[:contact_form]
    email = contact_info[:email]
    name = contact_info[:name]
    message = contact_info[:message]
    subject = contact_info[:subject]
    ContactMailer.contact(email, name, message, subject).deliver_now
  end
end
