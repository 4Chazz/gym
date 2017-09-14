class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      succcess: "Thank you. Someone will contact you shortly."
      redirect_to root_path
    else
      danger: "Form is incomplete"
      redirect_to contact_path,
    end
  end


private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end

end
