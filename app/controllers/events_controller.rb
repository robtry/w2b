class EventsController < ApplicationController
  before_action :set_event, only: [:show]

  def index
    redirect_to root_path
  end

  def show
    @item = Item.new
  end


  # POST /events
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Evento creado satisfactoriamente' }
      else
        flash[:error] = 'Debe llenar todos los campos del evento'
        format.html {redirect_to root_path}
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:nombre, :descripcion)
    end
end
