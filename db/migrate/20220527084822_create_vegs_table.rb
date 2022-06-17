class CreateVegsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :vegs do |t|
      t.string :nom
      t.text :description
      t.integer :prix
    end
  end
end
