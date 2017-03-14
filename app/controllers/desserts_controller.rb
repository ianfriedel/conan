class DessertController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    @dessert = @posts
  end
end
