class HomeController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    @topsix = @posts[0..5]
    @first = @posts[6..6]
    @firstright = @posts[7..7]
    @fullwidth = @posts[8..8]
    @col8three = @posts[9..11]
    @first3 = @posts.order('created_at DESC').take(3)
    @sidebar = @posts.take(3)
    @first4 = @posts.take(4)

  end
end
