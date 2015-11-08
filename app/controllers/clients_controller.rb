class ClientsController < ApplicationController
  def index
    @clients = Client.all

    #respond_to do |format|
    #  format.html do
    #  end
    #end
  end

  def show
    @client = Client.find(params[:id])
  end
end
