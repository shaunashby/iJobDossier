# == Schema Information
#
# Table name: job_application_pools
#
#  id          :integer          not null, primary key
#  user        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class JobApplicationPoolTest < ActiveSupport::TestCase

  test "test truth" do
    assert true
  end

  test "test new with empty attribute" do
    pool = JobApplicationPool.new
    assert !pool.save, "JobApplicationPool saved without user attribute."
  end

  test "test validations" do
    pool = JobApplicationPool.new(user: 'shauny', description: "A nice little description of this pool.")
    assert pool.save, "JobApplicationPool saved with valid attributes."
  end

end
