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
    if @theme.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    @theme = Theme.find(params[:id])
  end

  def update
    @theme = Theme.find(params[:id])
    if @theme.update(theme_params)
      redirect_to theme_path(@theme.id)
    else
      render 'edit'
    end
  end

  private
    def theme_params
      params[:theme].permit(:title, :content)
    end

end
