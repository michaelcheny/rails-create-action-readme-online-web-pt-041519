class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
    post = Post.new
    post.title = params[:title]
    post.description = params[:title]
    post.save
    redirect_to posts_path(@post)
  end
end
