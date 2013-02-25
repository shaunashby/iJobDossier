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
end
