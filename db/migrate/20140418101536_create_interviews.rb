class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.text :detail
      t.boolean :expectation
      t.boolean :actual

      t.timestamps
    end
  end
end
