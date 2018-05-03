class PostsController < ApplicationController
	 protect_from_forgery prepend: true
	 before_action :set_post, only: [:show, :update, :destroy], :authenticate_user!

  def index
    @posts = Post.all
    json_response(@posts)
  end

  def create
    @post = Post.create!(post_params)
    json_response(@post, :created)
  end

  def show
    json_response(@post)
  end

  def update
    @post.update(post_params)
    head :no_content
  end

  def destroy
    @post.destroy
    head :no_content
  end

  private

  def post_params
    params.permit(:title, :created_at)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
