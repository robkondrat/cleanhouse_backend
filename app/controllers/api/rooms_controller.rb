class Api::RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render "index.json.jb"
  end

  def create
    @room = Room.new(
      number: params[:number],
      floor: params[:floor],
      room_type: params[:room_type],
      status: params[:status]
    )
    @room.save
    render "show.json.jb"
  end

end
