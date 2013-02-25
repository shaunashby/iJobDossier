# == Schema Information
#
# Table name: references
#
#  id           :integer          not null, primary key
#  dossier_id   :integer
#  from         :string(255)
#  organisation :string(255)
#  rawdata      :string(255)
#  location     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ReferenceTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "test new with empty attributes" do
    ref = Reference.new
    assert !ref.save, "Reference saved with empty attributes."
  end

  test "test validations" do
    ref = Reference.new(from: 'A.Person',
                        organisation: 'CDSI',
                        rawdata: '4134545jjjj44t13k4jtkb34ltkb13l4htbl13hbtlkh13b5lth1b35ltkb1l3k5btlb',
                        location: '/path/to/files/Ref1.pdf')

    assert ref.save, "Reference saved with valid attributes."
  end

end
