class HomeController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc)
  end
  def about
  end
  def temp
    redirect_to root_path
  end
end
