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

class CoverLetterPart < ActiveRecord::Base
  attr_accessible :cover_letter_id, :position, :body
end
