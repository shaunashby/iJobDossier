# == Schema Information
#
# Table name: dossiers
#
#  id                 :integer          not null, primary key
#  job_application_id :integer
#  notes              :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class DossierTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "test validations" do
    dossier = Dossier.new
    assert dossier.save, "Dossier saved with valid attributes."
  end

end
