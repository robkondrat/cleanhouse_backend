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
      status: params[:status],
      user_id: current_user.id
    )
    @room.save
    render "show.json.jb"
  end

  def show
    @room = Room.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @room = Room.find_by(id: params[:id])
    @room.number = params[:number] || @room.number
    @room.floor = params[:floor] || @room.floor
    @room.room_type = params[:room_type] || @room.room_type
    @room.status = params[:status] || @room.status
    @room.user_id = params[:user_id] || @room.user_id
    @room.save
    render "show.json.jb"
  end

  def destroy
    room = Room.find_by(id: params[:id])
    room.destroy
    render json: {message: "Room successfully destroyed."}
  end

end
