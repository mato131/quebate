class PagesController < ApplicationController
  def home
    @title = "The Latest Debate | Home"
    @posts = Post.new
    @posts = Post.paginate(:page => params[:pages])
  end
  