class User < ApplicationRecord
  # Direct associations

  has_many   :received_evaluations,
             :class_name => "Evaluation",
             :foreign_key => "reviewee_id",
             :dependent => :destroy

  has_many   :evaluations,
             :foreign_key => "reviewer_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
