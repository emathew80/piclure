class CreateLures < ActiveRecord::Migration
  def change
    create_table :lures do |t|
      t.text :message

      t.timestamps
    end
  end
end
