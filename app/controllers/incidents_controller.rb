class IncidentsController < ApplicationController
  
  def report
    @incident = Incident.new
  end
  
  def message
  end

  def create
       @incident = Incident.new(incident_params)
      
      if @incident.save
        flash[:alert] = "Thank You"
        redirect_to message_path
      else
        flash[:alert] = "Something went wrong ..."
        redirect_to root_path
      end
  end

  private

  def incident_params
    params.require(:incident).permit(:details, {attachment: []}, :school_id)
  end
  
end
