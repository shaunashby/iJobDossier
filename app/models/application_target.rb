# == Schema Information
#
# Table name: application_targets
#
#  id                 :integer          not null, primary key
#  job_application_id :integer
#  company            :string(255)
#  contact            :string(255)
#  address            :string(255)
#  notes              :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class ApplicationTarget < ActiveRecord::Base
  belongs_to :job_application

  validates :company, presence: true
  validates :contact, presence: true
  validates :address, presence: true
end
