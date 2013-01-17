class InvoiceController < ApplicationController

  def index
    @invoices = Invoice.all  
  end
  
  def new
    @invoice = Invoice.new
    @clients = Client.all
    customer = @invoice.build_customer
    customer.build_address
    @invoice.products.build
  end
  
  def create
    @invoice = Invoice.create(params[:invoice])
    redirect_to invoice_new_path, :notice => "Successfully created"
  end
  
  def edit
    @invoice = Invoice.find(params[:id])
  end
  
  def delete
    @invoice = Invoice.find(params[:id])
    @invoice.delete_all
  end
  
  def generate
    @invoice = Invoice.find(params[:id])
  end
  
end
