# == Schema Information
#
# Table name: application_targets
#
#  id                 :integer          not null, primary key
#  job_application_id :integer
#  company            :string(255)
#  contact            :string(255)
#  email              :string(255)
#  address            :string(255)
#  notes              :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class ApplicationTarget < ActiveRecord::Base
  attr_accessible :company, :contact, :email, :address, :notes

  belongs_to :job_application

  validates :company, presence: true
  EMAIL_VALIDATION_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :contact, presence: true, length: { minimum: 5, maximum: 20 }
  validates :email,   presence: true, format: { with: EMAIL_VALIDATION_REGEX }
  validates :address, presence: true
end
