class GalleriesController < ApplicationController
	def portfolio
 	@category = Category.find(1)
 	@galleries =@category.galleries
 	end


 	def bridal
 	 	@category = Category.find(2)
 	@galleries =@category.galleries	
 	end
 	
	private
	 def gallery_params
      params.require(:gallery).permit(:image, :category_id, :title)
    end
end
