class AssignmentsController < ApplicationController
  def create
    #raise @assignment
    @event = Event.find(params[:event_id])
    @assignment = @event.assignments.new(assignment_params)
    @assignment.event = @event
    
    if params[:itemusuario] != nil # si no selecciono nada
        respond_to do |format|
          if @assignment.save
            UsuarioItem.create(item_id:params[:itemusuario], assignment_id: @assignment.id)
            Item.find(params[:itemusuario]).update(numero:(Item.find(params[:itemusuario]).numero-@assignment.cantidad))
            format.html { redirect_to @assignment.event, notice: 'Usuario guardado'}
          else
            flash[:error] = 'No se pudo agregar, revise los datos'
            format.html { redirect_to @event}
          end
        end
    else
      flash[:error] = 'Seleccione algo para traer!'
      return redirect_to @event
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:usuario,:cantidad,:itemusuario)
    end
end
