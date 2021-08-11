class BlogController < ApplicationController
    # index makes an active record call to get all the blog posts
    def index
        @blog = Blog.all
    end

    # show displays one blog post
    def show
        @post = Blog.find(params[:id])
    end
    def new #creates a new blog post
     @blog_post = Blog.new
    end
    def create #creates a blog post via user interaction
        @blog_post = Blog.create(blog_parameters)
        if @blog_post.valid?
            redirect_to blogs_path
        else
            redirect_to new_blog_path
        end
    end
    private
    def blog_parameters#check to ensure new post created is valid
        params.require(:blog).permit(:title, :content)

    end
end
