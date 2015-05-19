class ResponsesController < ApplicationController
  before_action :check_if_owner, only: [:edit, :update, :destroy]

  def check_if_owner
    response = Response.find(params[:id])
    if response.user_id != current_user.id
      redirect_to posts_url, notice: "You must be the owner to do that!"
    end
  end

  def index
    @responses = Response.all
  end

  def show
    @response = Response.find(params[:id])
  end

  def new
    @response = Response.new
  end

  def create
    @response = Response.new
    @response.post_id = params[:post_id]
    @response.user_id = params[:user_id]
    @response.contents = params[:contents]

    if @response.save
      redirect_to :back, :notice => "Response created successfully."
    else
      render 'new'
    end
  end

  def edit
    @response = Response.find(params[:id])
  end

  def update
    @response = Response.find(params[:id])

    @response.post_id = params[:post_id]
    @response.user_id = params[:user_id]
    @response.contents = params[:contents]

    if @response.save
      redirect_to response_url(@response.id), :notice => "Response updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @response = Response.find(params[:id])

    @response.destroy

    redirect_to responses_url, :notice => "Response deleted."
  end
end
