# == Schema Information
#
# Table name: job_application_pools
#
#  id         :integer          not null, primary key
#  user       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class JobApplicationPool < ActiveRecord::Base
  attr_accessible :user

  has_many :job_applications

  validates :user, presence: true,
                   length: { minimum: 5, maximum: 10 }

end
