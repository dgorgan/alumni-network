class MenteeHelpCategory < ApplicationRecord
  belongs_to :mentee
  belongs_to :help_category
end
