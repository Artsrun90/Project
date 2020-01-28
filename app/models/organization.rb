class Organization < ApplicationRecord
    has_and_belongs_to_many :partners
    has_many :employees, dependent: :destroy    
end
