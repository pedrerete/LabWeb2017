class EventsController < ApplicationController
  load_and_authorize_resource :only => [:new, :edit, :delete]
  skip_before_action :authenticate_user!, :only => [:index, :show]

  def index
    @events = Event.all.order(:date)
  end

  def show 
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end
  
  def edit
     @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(events_params)

    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(events_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end

  private
    def events_params
      params.require(:event).permit(:image, :title, :date, :body)
    end
end
