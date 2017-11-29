class AssignmentsController < ApplicationController
  def create
    #raise @assignment
    @event = Event.find(params[:event_id])
    @assignment = @event.assignments.new(assignment_params)
    @assignment.event = @event

    if params[:itemusuario] != nil # si no selecciono nada
      @item =Item.find(params[:itemusuario])
      @assignment.item_id = params[:itemusuario]
      if @assignment.cantidad <= @item.numero #si trae mas de lo que se pide
          respond_to do |format|
            if @assignment.save
              if (@item.numero-@assignment.cantidad) == 0
                @item.update(completado: true)
                flash[:error] = "#{@item.descripcion} se completo"
              end
              @item.update(numero:(@item.numero-@assignment.cantidad))
              format.html { redirect_to @assignment.event, notice: 'asignacion creada'}
            else
              flash[:error] = 'No se pudo agregar, revise los datos'
              format.html { redirect_to @event}
            end
          end
      else
        flash[:error] = 'Gracias por la solidaridad, pero no nececitamos tanto'
        return redirect_to @event
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
