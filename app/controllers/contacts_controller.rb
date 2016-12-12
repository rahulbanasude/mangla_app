class ContactsController < ApplicationController

	def new
		@contact = Contact.new
		
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			redirect_to root_path, notice: "Thank you for expressing interest."
		else
			render 'new', alert: "Signup failed."
			
		end
		
	end
	private
	def contact_params
  params.require(:contact).permit(:name, :number, :email, :how, :message)
  
end
end
