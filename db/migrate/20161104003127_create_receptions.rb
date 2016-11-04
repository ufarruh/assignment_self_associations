class CreateReceptions < ActiveRecord::Migration[5.0]
  def change
    create_table :receptions do |t|
      t.integer :doctor_id
      t.integer :patient_id
      
      t.timestamps
    end
    
    add_index :receptions, [:doctor_id, :patient_id]
  end
end
