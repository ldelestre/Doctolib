class CreateAppoitments < ActiveRecord::Migration[5.2]
	def change
		create_table :appoitments do |t|
			t.datetime :date
			t.integer :doctor_id
			t.integer :patient_id
			t.timestamps
		end
	end
end