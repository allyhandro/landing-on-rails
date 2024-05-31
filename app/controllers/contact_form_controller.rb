# frozen_string_literal: true

# Cheeky Contact Form controller
class VideoCoverLetter::ContactFormController < VideoCoverLettersController
  def create
    # handle submission
    @name = params[:contact_form][:name]
    @last_name = params[:contact_form][:last_name]
    @email = params[:contact_form][:email]
    @message = params[:contact_form][:message]

    # Perform any necessary actions with the form data
    flash[:success] = 'Your message has been sent successfully.'
    redirect_to :root
  end
end
