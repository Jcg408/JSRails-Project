class Staff < ApplicationRecord
    has_many :appointments
    has_many :clients, through: :appointments
    has_many :services

    validates :name, :bio, presence: true

    def self.alphabetize
        self.order(:name)
    end
    
    def self.most_popular
        self.joins(:appointments).group('appointments.id').order('count(appointments.id)').limit(1)
    end

end
