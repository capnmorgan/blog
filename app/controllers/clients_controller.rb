class ClientsController < ApplicationController
  def index
    @clients = Client.all

    #respond_to do |format|
    #  format.html do
    #  end
    #end
  end
end
