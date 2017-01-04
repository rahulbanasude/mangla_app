class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  end


  private
    def set_post
      @post = Post.find(params[:id])
    end
  def post_params
      params.require(:post).permit(:title, :body, :image)
    end
end
