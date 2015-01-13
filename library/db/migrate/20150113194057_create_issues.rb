class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.date :datetime
      t.string :mark
      t.string :title
      t.string :picture
      t.integer :volume
      t.float :price

      t.timestamps
    end
  end
end
