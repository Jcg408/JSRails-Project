class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time

  belongs_to :services
  belongs_to :staffs
end
