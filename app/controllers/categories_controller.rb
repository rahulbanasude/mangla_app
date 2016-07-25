class CategoriesController < ApplicationController
	def index
	
end
def category_params
      params.require(:category).permit(:name)
    end
end
