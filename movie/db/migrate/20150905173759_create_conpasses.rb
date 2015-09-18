class CreateConpasses < ActiveRecord::Migration
  def change
    create_table :conpasses do |t|

      t.timestamps null: false
    end
  end
end
