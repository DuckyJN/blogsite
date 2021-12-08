class Profile < ApplicationRecord
    belongs_to :user

    validates :username, presence: true, uniqueness: true
    validates :first_name, presence: false
    validates :last_name, presence: false
end
