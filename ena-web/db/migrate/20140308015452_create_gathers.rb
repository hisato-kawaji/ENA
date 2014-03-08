class CreateGathers < ActiveRecord::Migration
  def change
    create_table :gathers do |t|

      t.timestamps
    end
  end
end
