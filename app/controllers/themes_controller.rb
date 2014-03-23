class ThemesController < ApplicationController

  def send_henry_mail
    @mail = TestMailer.send_henry_mail.deliver
    redirect_to themes_path
  end

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

  def destroy
    @theme = Theme.find(params[:id])
    @theme.destroy
    redirect_to themes_path
  end

  private
    def theme_params
      params[:theme].permit(:title, :content)
    end

end
