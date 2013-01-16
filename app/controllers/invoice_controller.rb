class InvoiceController < ApplicationController

  def index
    @invoices = Invoice.all  
  end
  
  def new
    @invoice = Invoice.new
    customer = @invoice.build_customer
    customer.build_address
    @invoice.products.build
  end
  
  def create
    @invoice = Invoice.create(params[:invoice])
    redirect_to invoices_new_path, :notice => "Successfully created"
  end
  
  
end
