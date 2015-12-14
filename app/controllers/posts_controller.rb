class PostsController < ApplicationController

def index
  @posts = Post.all
end

def new
  @post = Post.new
end

def create
  @post = Post.create(post_params)
  if @post.save
    flash[:success] = "Post Submitted"
    redirect_to @post
  else
    flash[:alert] = "Error: You must include an image with your post."
    render :new
  end
end

def show
  @post = Post.find(params[:id])
end

private


def post_params
  params.require(:post).permit(:caption, :image)
end

end
