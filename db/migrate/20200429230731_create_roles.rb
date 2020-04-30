class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.belongs_to :person
      t.belongs_to :movie
      t.string :name
    end
  end
end
