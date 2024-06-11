# frozen_string_literal: true

# Cheeky Contact Form Mailer
class ContactMailer < ApplicationMailer
  default to: 'ally.w.han@gmail.com'
  def contact(email, name, message)
    @message = message
    @name = name
    @email = email
    mail(from: email, subject: 'The most simple example', message: @message, name: @name)
  end
end
