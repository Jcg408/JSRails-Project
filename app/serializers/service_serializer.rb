class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :appointments


end
