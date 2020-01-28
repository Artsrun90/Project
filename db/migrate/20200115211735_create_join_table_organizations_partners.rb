class CreateJoinTableOrganizationsPartners < ActiveRecord::Migration[6.0]
  def change
    create_join_table :organizations, :partners do |t|
      t.index [:organization_id, :partner_id]
      t.index [:partner_id, :organization_id]
    end
  end
end
