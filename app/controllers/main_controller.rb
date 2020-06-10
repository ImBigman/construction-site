class MainController < ApplicationController
  def index
    @floors = Floor.all
  end
end
