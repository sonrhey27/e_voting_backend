task :create_admin => :environment do
  user = User.new(name: 'admin', email_adress: 'admin@mail.com', password: '123456', user_type: 'admin')
  user.save

  puts "email: #{"admin@mail.com"} password: #{"123456"}"
end