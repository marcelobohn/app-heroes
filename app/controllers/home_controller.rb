class HomeController < ApplicationController
  def index
    @heroes = Hero.all
  end
end
