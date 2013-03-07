# == Schema Information
#
# Table name: cover_letter_parts
#
#  id              :integer          not null, primary key
#  cover_letter_id :integer
#  position        :integer
#  body            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class CoverLetterPartTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "test new with empty attributes" do
    letter_part = CoverLetterPart.new
    assert letter_part.save, "CoverLetterPart saved with empty attributes."
  end

end
