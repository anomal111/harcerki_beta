class CreateCoordinators < ActiveRecord::Migration
  def change
    create_table :coordinators do |t|
      t.string :name
      t.string :surname
      t.string :city
      t.string :street
      t.string :building
      t.string :apartment
      t.string :zip_code
      t.string :login
      t.string :password
      t.string :status

      t.timestamps
    end
  end
end
