class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params["id"])
    end

    def new
        @post = Post.new
        @location_id = params["location_id"]
    end

    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places/#{post.place.id}"
    end

end
