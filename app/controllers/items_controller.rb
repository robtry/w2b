class ItemsController < ApplicationController
  # POST /items
  def create
    @event = Event.find(params[:event_id])
    @item = @event.items.new(item_params)
    @item.event = @event
    @item.numero_original = @item.numero
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item.event, notice: 'Item agregado correctamente' }
      else
        flash[:error] = 'No se pudo agregar, revise los datos'
        format.html { redirect_to @event}
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:numero, :descripcion)
    end
end
