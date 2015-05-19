class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @response = Response.new
  end

  def new

  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.user_id = params[:user_id]
    @post.image_url = params[:image_url]
    @post.contents = params[:contents]
    @post.save

    redirect_to "/posts/#{@post.id}"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.user_id = params[:user_id]
    @post.title = params[:title]
    @post.image_url = params[:image_url]
    @post.contents = params[:contents]
    @post.save

    redirect_to "/posts/#{@post.id}"

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_url, notice: "Post successfully destroyed"
  end

  def index
    @posts = Post.all
  end
end
