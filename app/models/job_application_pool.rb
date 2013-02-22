# == Schema Information
#
# Table name: job_application_pools
#
#  id          :integer          not null, primary key
#  user        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class JobApplicationPool < ActiveRecord::Base
  attr_accessible :user, :description

  has_many :job_applications, dependent: :destroy

  validates :user, presence: true,
                   length: { minimum: 5, maximum: 10 }

end
