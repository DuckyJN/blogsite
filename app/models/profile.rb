class Profile < ApplicationRecord
    belongs_to :user

    validates :username, presence: true, unique: true
    validates :first_name, presence: true
    validates :last_name,  presence: true
end