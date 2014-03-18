class ThemesController < ApplicationController

  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find(params[:id])
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    @theme.save
    redirect_to root_path
  end

  private
    def theme_params
      params[:theme].permit(:title, :content)
    end

end
