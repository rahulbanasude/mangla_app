class PagesController < ApplicationController

	def home
		
	end

	def videos
		
	end

	def gallery
  	end

  	private
	def gallery_params
      params.require(:gallery).permit(:image, :category_id)
    end
end
