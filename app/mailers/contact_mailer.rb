# frozen_string_literal: true

# Cheeky Contact Form Mailer
class ContactMailer < ApplicationMailer
  default to: 'ally.w.han@gmail.com'
  default from: 'awhandro@gmail.com'

  def contact(email, name, message, subject)
    @message = message
    @name = name
    @email = email
    @subject = subject
    puts('contact mailer....model? >>>>>>>', @email)
    puts("contact mailer....model? >>>>>>> or maybe around this #{email}")
    mail(from: @email, subject: @subject, message: @message, name: @name)
  end
end
