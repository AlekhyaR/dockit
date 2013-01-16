class ClientsController < ApplicationController
  def new
    @client = Client.new
    @client.build_address
  end
  
  def create
    client = Client.create(params[:client])
  end
end
