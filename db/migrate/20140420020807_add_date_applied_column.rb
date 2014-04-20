class AddDateAppliedColumn < ActiveRecord::Migration
  def change

    change_table :companies do |t|
      t.string :dateApplied
    end

  end
end
