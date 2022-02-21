class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params["id"])
    end

    def new
        @post = Post.new
        @place_id = params["place_id"]
    end

    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places/#{@post.place_id}"
    end

    def destroy
        @post = Post.find(params["id"])
        @post.destroy
        redirect_to "/posts"
      end

end
