class ClientsController < ApplicationController
  def index
    if params[:filter]
      if params[:filter] == "attempted"
        @clients = Client.where(stage: "Attempted")
      elsif params[:filter] == "sold"
        @clients = Client.where(stage: "Sold")
      elsif params[:filter] == "presenting"
        @clients = Client.where(stage: "Presenting")
      elsif params[:filter] == "appointment"
        @clients = Client.where(stage: "Appointment")
      elsif params[:filter] == "negotiating"
        @clients = Client.where(stage: "Negotiating")
      elsif params[:filter] == "notcontracted"
        @clients = Client.where(stage: "Not Contracted")
      elsif params[:filter] == "notinvolved"
        @clients = Client.where(stage: "Not Involved")
      end
    else
      @clients = Client.all
    end

    #respond_to do |format|
    #  format.html do
    #  end
    #end
  end

  def show
    @client = Client.find(params[:id])
  end
end
