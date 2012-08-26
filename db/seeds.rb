# Create admin user

puts "Creating admin..."
Admin.create(:email => "admin@titeres.com", :password => "123456")
puts "Done."
