class AddDescriptionToJobApplicationPool < ActiveRecord::Migration
  def change
    add_column :job_application_pools, :description, :text
  end
end
