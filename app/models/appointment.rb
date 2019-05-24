class Appointment < ApplicationRecord
    belongs_to :staff 
    belongs_to :client
    belongs_to :service

    validates_presence_of :date, :time, :staff_id, :service_id
    
     
end