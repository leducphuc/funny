class Category < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :lessons, dependent: :destroy

  def load_questions
    questions.order("RANDOM()").limit 4
  end
end
