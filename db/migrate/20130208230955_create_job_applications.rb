class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.integer :job_application_pool_id
      t.string :jobtitle
      t.string :jobref
      t.date :deadline

      t.timestamps
    end
  end
end
