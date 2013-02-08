class CreateJobApplicationPools < ActiveRecord::Migration
  def change
    create_table :job_application_pools do |t|
      t.integer :id
      t.string :user

      t.timestamps
    end
  end
end
