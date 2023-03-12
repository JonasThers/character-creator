class CharacterClass < ApplicationRecord
    has_many :characters

    VALID_STATUSES = ['approved', 'pending']
    
    validates :name, presence: true
    validates :strength, presence: true
    validates :dexterity, presence: true
    validates :charisma, presence: true
    validates :wisdom, presence: true
    validates :intelligence, presence: true
    validates :status, presence: true, inclusion: { in: VALID_STATUSES }
end
