#Complément base de données avec des cities
50.times do 
  City.create(name: Faker::Address.city)
end

#Base de données fictive pour les patients
50.times do
  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.between(from: 1, to: 50))
end

#Base de données fictive pour les docteurs
50.times do
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: ["Généraliste", "Dermatologue", "Dentiste", "Ophtalmologue"].sample, zip_code: Faker::Number.leading_zero_number(digits: 5), city_id: Faker::Number.between(from: 1, to: 50))
end

#Base de données fictive pour les rdv
15.times do
  Appointment.create(date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 60), patient_id: Faker::Number.between(from: 1, to: 50), doctor_id: Faker::Number.between(from: 1, to: 50), city_id: Faker::Number.between(from: 1, to: 50))
end

