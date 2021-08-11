class BlogController < ApplicationController
    # index makes an active record call to get all the blog posts
    def index
        @blog = Blog.all
    end

    # show displays one blog post
    def show
        @post = Blog.find(params[:id])
    end
    
end
