class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.valid?
      redirect_to root_path
    else
      return render text: 'Form Not Complete'
    end
  end


private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end

end
