class CreateAppearances < ActiveRecord::Migration[7.1]
  def change
    create_table :appearances do |t|
      t.string :name
      t.string :default_timezone
      t.boolean :is_leet, default: false

      t.timestamps
    end
  end
end
