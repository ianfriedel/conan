class DrinksController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    @sidebar = @posts.take(3)
  end
end
