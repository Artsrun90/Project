class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :phone
      t.belongs_to :organization, foreign_key: true

      t.timestamps
    end
  end
end
