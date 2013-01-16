class InvoiceController < ApplicationController
  def new
    @invoice = Invoice.new
    @invoice.build_address
    @invoice.build_product
  end
end
