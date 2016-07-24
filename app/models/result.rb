class Result < ActiveRecord::Base
  belongs_to :question
  belongs_to :answer
  belongs_to :lesson
  before_create :question

  def question
    question = Question.find_by_id answer.question.id
  end

  def wrong_answer?
    if answer.is_correct
      return false
    else
      right_answer
    end
  end

  private
  def right_answer answer
    Answer.where("question_id = :question_id AND is_correct = true",{question_id: answer.question_id, is_correct: answer.is_correct})
  end
end
