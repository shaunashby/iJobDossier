# == Schema Information
#
# Table name: application_targets
#
#  id                 :integer          not null, primary key
#  job_application_id :integer
#  company            :string(255)
#  contact            :string(255)
#  email              :string(255)
#  address            :string(255)
#  notes              :text(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class ApplicationTargetTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "test new with empty attributes" do
    target = ApplicationTarget.new
    assert !target.save, "ApplicationTarget saved with empty attributes."
  end

  test "test validations" do
    target = ApplicationTarget.new(company: 'MyComp',
                                   contact: 'shauny',
                                   email:   'shaun@somewhere.com',
                                   address: 'somewhere')

    assert target.save, "ApplicationTarget saved with valid attributes."
  end

end
