class PostsController < ApplicationController

  def create
    @theme = Theme.find(params[:theme_id])
    @post = @theme.posts.create(post_params)
    redirect_to theme_path(@theme.id)
  end

  private
    def post_params
      params[:post].permit(:content)
    end
end
