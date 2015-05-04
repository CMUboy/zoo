class CreateGiraffes < ActiveRecord::Migration
  def change
    create_table :giraffes do |t|
      t.float :height

      t.timestamps null: false
    end
  end
end
