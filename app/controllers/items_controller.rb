class ItemsController < ApplicationController

  # POST /items
  def create
    @event = Event.find(params[:event_id])

    @item = @event.items.new(item_params)
    @item.event = @event

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item.event, notice: 'Item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:numero, :descripcion)
    end
end
