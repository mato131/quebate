class PostsController < ApplicationController

 def create
    @post = posts.build(params[:post])
    if @post.save
      flash[:success] = "Post created!"
      redirect_to root_path
    else
      redirect_to root_path
    end
 end
 