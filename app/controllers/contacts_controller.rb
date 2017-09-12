class ContactsController < ApplicationController


  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
  end


private
  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)

  end

end
