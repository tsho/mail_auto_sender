class PostsController < ApplicationController

  def create
    @theme = Theme.find(params[:theme_id])
    @post = @theme.posts.create(post_params)
    redirect_to theme_path(@theme.id)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to theme_path(params[:theme_id])
  end

  private
    def post_params
      params[:post].permit(:content)
    end
end
