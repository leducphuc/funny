class Lesson < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  has_many :results, dependent: :destroy
  has_many :questions

  accepts_nested_attributes_for :results
end
