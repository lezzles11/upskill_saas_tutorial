class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

#Saves the contact in contact_params; if the contact saved... or else... show them that there was an error 
  def create
    @contact = Contact.new(contact_params) #{name: 'asdf', email: 'asdf', comments: 'asdf'}
    if @contact.save #when you do .save, the whole thing gets saved into database 
       flash[:success] = "Message sent." #
       redirect_to new_contact_path
    else
       flash[:danger] = @contact.errors.full_messages.join(", ")
       redirect_to new_contact_path
    end
  end

#Privatizes the contact 
  private
    def contact_params
       params.require(:contact).permit(:name, :email, :comments)
    end
end

