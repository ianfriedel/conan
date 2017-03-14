class LunchController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    @lunch = @posts
  end
end
