class Workout < ApplicationRecord
    has_many :exercises

    #validation name and description for workout
    validates :name, presence: true
    validates :description, presence: true

end
