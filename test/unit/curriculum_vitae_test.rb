# == Schema Information
#
# Table name: curricula_vitae
#
#  id         :integer          not null, primary key
#  dossier_id :integer
#  lang       :string(255)
#  rawdata    :string(255)
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CurriculumVitaeTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "test new with empty attributes" do
    cv = CurriculumVitae.new
    assert !cv.save, "CurriculumVitae saved with empty attributes."
  end

  test "test validations" do
    cv = CurriculumVitae.new(lang: 'EN',
                             rawdata: 'dgh53sdfg53sf7gj3sfg6j53sfg7j563sfg7j35sfgafga8675dfh4a6h4dgh45',
                             location: '/path/to/file/CV-EN.pdf')

    assert cv.save, "CurriculumVitae saved with valid attributes."
  end

end
