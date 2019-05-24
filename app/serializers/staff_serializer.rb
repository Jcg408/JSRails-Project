class StaffSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio

  has_many :appointments
  
end
