class AddSubmissionStatusToJobApplication < ActiveRecord::Migration
  def change
    add_column :job_applications, :submission, :date
    add_column :job_applications, :status, :integer
  end
end
