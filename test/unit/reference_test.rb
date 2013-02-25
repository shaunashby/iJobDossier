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
end
