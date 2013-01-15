namespace :db do
  task :add_data_to_status => :environment do
    Status.transaction do
      Status.create!(:code => "PAID", :name => "Fully Paid")
      Status.create!(:code => "UNPAID", :name => "Unpaid")
      Status.create!(:code => "PARTIALLY_PAID", :name => "Paid partially")
    end
  end
end