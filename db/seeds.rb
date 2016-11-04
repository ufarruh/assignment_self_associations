# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    puts "Destroying all Data"
    User.destroy_all
    Appointment.destroy_all
    puts "Creating new data"
    
    10.times do
      u = User.new
      u.name = Faker::Name.name
      u.save!
    end
    
    10.times do 
      a = Appointment.new
      a.doctor_id = User.all.sample.id
      a.patient_id = User.all.sample.id
      a.save!
    end
    puts "Created bunch of new data"