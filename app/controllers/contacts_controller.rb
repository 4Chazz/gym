class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)

    # if @contact.saved?
    #   flash[:notice] = "Thanks! We'll be in touch soon!"

    # else
    #   flash[:alert] = "Error Sending. Recheck the form"
    # end
      redirect_to root_path
  end


private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end

end
