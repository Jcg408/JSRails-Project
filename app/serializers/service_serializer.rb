class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :staff_services
end
