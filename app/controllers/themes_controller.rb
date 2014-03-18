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
end
