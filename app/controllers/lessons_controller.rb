class LessonsController < ApplicationController
  before_action :logged_in_user

  def new
    @user = current_user
    @category = Category.find_by_id(params[:category_id])
    @questions = @category.load_questions
    @lesson = Lesson.new(user_id: @user.id, category_id: @category.id)
    Settings.number.times {@lesson.results.build}
  end

  def index
  end

  def show
  end

  def create
    @lesson = current_user.lessons.build lesson_params
    @lesson.category_id = params[:category_id]
    @lesson.save
    byebug
    flash[:success]  = "Success"
  end

  private
  def lesson_params
    params.require(:lesson).permit :user_id,:category_id,results_attributes:[:id, :question_id, :answer_id, :lesson_id]
  end

end
