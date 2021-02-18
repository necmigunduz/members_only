class PostsController < ApplicationController
  # before_action :authenticate_user!, only: %i[ new create ]
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      
      redirect_to new_post_path
    else
      
      render :new
    end
  end

  def index
  end

  private

  def post_params
    params.permit(:title, :body)
  end

end
