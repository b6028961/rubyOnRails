class StaticPagesController < ApplicationController
  def home
  end

  def about
    #render('hello')
  end

  def contact
  end

  def hello
  #redirect_to('https://github.com')
  @array = [1, 2, 3, 4, 5]
  end
end
