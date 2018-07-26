require 'faker'

5.times do
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

5.times do
	Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Science.element, postal_code: Faker::IDNumber.valid)
end

5.times do
	Appoitment.create(date: Faker::Time.forward(98, :morning), doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id)
end