class ContactMailer < ActionMailer::Base
  default to: 'chazzfirehose@gmail.com'

  def contact_email(contact)
    @contact = contact

    mail(from: @contact.email, subect: 'Contact Form Message').deliver
  end
end