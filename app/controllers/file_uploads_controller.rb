class FileUploadsController < ApplicationController
  def new
    @hero = Hero.find(params[:hero_id])
  end

  def create
    hero = Hero.find(params[:hero_id])
    hero.files.attach(params[:hero][:files])
    redirect_to hero_path(hero)
  end

  def destroy
    @hero = Hero.find(params[:hero_id])
    @hero.files.find(params[:id]).purge
    redirect_to hero_path(@hero)
  end
end
