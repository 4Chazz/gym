class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.valid?
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      # redirect_to root_path
    else
      flash.now[:error] = 'Form Incomplete'
      redirect_to contacts
    end
  end


private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end

end
