class CreateConnpasses < ActiveRecord::Migration
  def change
    create_table :connpasses do |t|

      t.timestamps null: false
    end
  end
end
