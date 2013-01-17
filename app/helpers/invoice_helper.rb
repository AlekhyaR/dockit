module InvoiceHelper
  def grand_total(invoice)
    sum = 0
    if invoice.products.present?
      invoice.products.each do |product|
        sum = sum + product.price * product.quantity
      end
    end
    return sum
  end
end
