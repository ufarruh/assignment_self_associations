class User < ApplicationRecord
  # User as Doctor
  has_many :patient_appointments, foreign_key: :patient_id, 
                                class_name: "Appointment"
  has_many :patients, through: :patient_appointments, source: :patient
         
  # User as Patient                                
  has_many :doctor_appointments, foreign_key: :doctor_id ,
                                class_name: "Appointment"
                                
  has_many :doctors, through: :patient_appointments, source: :doctor
                                
                                
end
