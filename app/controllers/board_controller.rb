class BoardController < ApplicationController
  def index
    
    new_post = Post.new
    @posts = Post.all.order("id desc")
  end

  def create
    @post = Post.new(title: params[:title], content: params[:content])
    if @post.save
      redirect_to :back
    else
      render :text => @post.errors.messages[:title].first
    end 
    
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def comment_create
    @comment = Comment.new(post_id: params[:post_id], content: params[:content])
    @comment.save
    redirect_to :back
  end


end
