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

end
