class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  
  def create
    Post.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:bookname, :image, :text, :story, :category_id ).merge(user_id: current_user.id)
  end

end
