class Profile < ApplicationRecord
    belongs_to :user

    validates :username, presence: true, uniqueness: true
    validates :first_name, presence: true
    validates :last_name,  presence: true
end