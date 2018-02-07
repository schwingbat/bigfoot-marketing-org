class Project < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 3 }

  has_many :formats, through: :project_format
  has_many :attachments

  @@status_names = ['Submitted', 'Started', 'Proofing', 'Ready']

  def status_name
    @@status_names[self.status]
  end
end
