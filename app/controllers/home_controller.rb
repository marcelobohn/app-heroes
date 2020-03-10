class HomeController < ApplicationController
  def index
    @search = params[:search]
    @heroes =
      if @search
        Hero
          .where('name like ?', "%#{@search}%")
      else
        Hero.all
      end
  end
end
