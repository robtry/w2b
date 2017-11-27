class AssignmentsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @assignment =  @event.assignments.new(assignment_params)
    @assignment.event = @event

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to @assignment.event, notice: 'Usuario creado' }
      else
        flash[:error] = 'No se pudo agregar, revise los datos'
        format.html { redirect_to @event}
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:usuario,:cantidad)
    end
end
