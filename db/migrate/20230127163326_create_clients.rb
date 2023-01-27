class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :rank
      t.string :status
      t.integer :debt

      t.timestamps
    end
  end
end
