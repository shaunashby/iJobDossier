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
end
