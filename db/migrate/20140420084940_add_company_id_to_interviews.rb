class AddCompanyIdToInterviews < ActiveRecord::Migration
  def change
    add_column :interviews, :company_id, :integer
  end
end
