class HomeController < ApplicationController
  def index
    @users = User.all
    @title = 'test'
  end
end
