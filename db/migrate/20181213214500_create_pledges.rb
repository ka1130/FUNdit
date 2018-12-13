class CreatePledges < ActiveRecord::Migration[5.0]
  def change
    create_table :pledges do |t|
      t.references :project, foreign_key: true
      t.string :name
      t.string :email
      t.text :comment
      t.integer :amount

      t.timestamps
    end
  end
end
