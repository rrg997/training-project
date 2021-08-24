class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = t('.post')
      redirect to @post
    else
      render 'new'
    end
  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post)..permit(:text, :user_id)
  end
end