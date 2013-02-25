# == Schema Information
#
# Table name: cover_letters
#
#  id         :integer          not null, primary key
#  dossier_id :integer
#  lang       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CoverLetterTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "test new with empty attributes" do
    letter = CoverLetter.new
    assert !letter.save, "CoverLetter saved with empty attributes."
  end

  test "test validations" do
    letter = CoverLetter.new(lang: 'EN')
    assert letter.save, "CoverLetter saved with valid attributes."
  end

end
