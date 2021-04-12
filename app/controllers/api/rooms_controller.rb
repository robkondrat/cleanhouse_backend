class Api::RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render "index.json.jb"
  end
end
