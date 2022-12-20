class PostsController < ApplicationController

  def index
    render json: Post.all
  end

  def show
    post = Post.find_by!(id: params[:id])
    render json: post
  end

  def create
    post = Post.create!(
      content: params[:content],
      user_id: params[:user_id]
    )
    render json: post
  end

  def update
    post = Post.find_by!(id: params[:id])
    post.update(content: params[:content])
    render json: post
  end

  def destroy
    post = Post.find_by!(id: params[:id])
    post.destroy
    render json: post
  end
  
end
