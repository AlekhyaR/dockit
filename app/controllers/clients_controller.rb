class ClientsController < ApplicationController
  def new
    @client = Client.new
    @client.build_address
  end
  
  def create
    client = Client.create(params[:client])
    redirect_to clients_new_path, :notice => "Successfully created"
  end
end
