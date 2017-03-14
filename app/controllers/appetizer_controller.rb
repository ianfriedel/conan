class AppetizerController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    @appetizer = @posts
  end
end
