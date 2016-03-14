class PassengerMailer < ApplicationMailer
  default from: 'notifications@odiner.com'

  def confirmation_email(booking)
    @booking = booking
    @url = 'http://odiner.com/login'
    mail(to: @booking.passengers.first.email, subject: 'Welcome to Odin Flight Booker')
  end
end
