class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :patient_id
      
      t.timestamps
    end
    
    add_index :appointments, [:doctor_id, :patient_id]
  end
end
