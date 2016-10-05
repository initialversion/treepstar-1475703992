class Evaluation < ApplicationRecord
  # Direct associations

  belongs_to :reviewee,
             :class_name => "User"

  belongs_to :reviewer,
             :class_name => "User"

  # Indirect associations

  # Validations

end
