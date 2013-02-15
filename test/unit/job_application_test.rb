# == Schema Information
#
# Table name: job_applications
#
#  id                      :integer          not null, primary key
#  job_application_pool_id :integer
#  jobtitle                :string(255)
#  jobref                  :string(255)
#  deadline                :date
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

require 'test_helper'

class JobApplicationTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "test new with empty attributes" do
    app = JobApplication.new
    assert !app.save, "JobApplication saved with empty attributes."
  end

end
