class PagesController < ApplicationController

	def home

	end

	def workshop
	@workshop = Workshop.new
	end

	def videos

	end

	def gallery
  	end

	def contact_us
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

	def create
		@workshop = Workshop.new(workshop_params)
		if @workshop.save
			redirect_to pages_workshops_path, notice: "Thank you for expressing interest."
		else
			render 'new', alert: "Signup failed."

		end

	end



  	def testimonial
  	end

  	private
	def gallery_params
      params.require(:gallery).permit(:image, :category_id)
    end
    def contact_params
  params.require(:contact).permit(:name, :number, :email, :how, :message)

end
def workshop_params
params.require(:workshop).permit(:name, :number, :email, :message)

end
end
