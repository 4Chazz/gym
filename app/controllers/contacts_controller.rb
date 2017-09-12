class ContactsController < ApplicationController

<<<<<<< HEAD

=======
# add this to master
>>>>>>> 69082a708431d6a73ac28f526cbe02d3d099acab
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
