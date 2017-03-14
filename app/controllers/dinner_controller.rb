class DinnerController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    @dinner = @posts
  end
end
