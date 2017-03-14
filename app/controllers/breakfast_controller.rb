class BreakfastController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    @breakfast = @posts
  end
end
