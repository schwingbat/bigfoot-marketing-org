class Project < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }

  has_many :formats, through: :project_format
  belongs_to :user

  @@status_names = ['Submitted', 'Started', 'Proofing', 'Ready']

  def status_name
    @@status_names[self.status]
  end
end
