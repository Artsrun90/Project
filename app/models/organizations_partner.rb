class OrganizationsPartner < ApplicationRecord
  belongs_to :organization
  belongs_to :partner
end
