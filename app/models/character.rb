class Character < ApplicationRecord
    belongs_to :character_class

    validates :name, presence: true
    validates :character_class_id, presence: true
end
