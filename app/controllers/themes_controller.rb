class ThemesController < ApplicationController

  def index
    @theme = Theme.find(params[:id])
  end

end
