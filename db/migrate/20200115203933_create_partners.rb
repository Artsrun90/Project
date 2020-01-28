class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners do |t|
      t.string :firstName
      t.string :lastName
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
