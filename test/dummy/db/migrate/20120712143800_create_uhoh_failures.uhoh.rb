# This migration comes from uhoh (originally 20120712143051)
class CreateUhohFailures < ActiveRecord::Migration
  def change
    create_table :uhoh_failures do |t|
      t.text :message

      t.timestamps
    end
  end
end
