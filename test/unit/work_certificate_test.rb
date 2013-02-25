# == Schema Information
#
# Table name: work_certificates
#
#  id           :integer          not null, primary key
#  dossier_id   :integer
#  position     :string(255)
#  organisation :string(255)
#  rawdata      :string(255)
#  location     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class WorkCertificateTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "test new with empty attributes" do
    wc = WorkCertificate.new
    assert !wc.save, "WorkCertificate saved with empty attributes."
  end

  test "test validations" do
    wc = WorkCertificate.new(position: 'Programmer',
                             organisation: 'CDSI',
                             rawdata: 'sfgajksfga7sfg87623h24kjh2g984gh249gh2gkjh249g8hsfkjghsfg08924ut',
                             location: '/path/to/wc/cert1.pdf')

    assert wc.save, "WorkCertificate saved with valid attributes."
  end

end
