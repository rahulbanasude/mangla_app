class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :name
      t.string :number
      t.string :email
      t.text :message

      t.timestamps null: false
    end
  end
end
