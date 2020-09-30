# before
def create
  @survey = Survey.find(params[:survey_id])
  @submittable_type = params[:submittable_type_id]
  question_params = params.require(:question).permit(:submittable_type, :title, :options_attributes, :minimum, :maximum)
  @question = @survey.questions.new(question_params)
  @question.submittable_type = @submittable_type
end

# Step 1: extract params.require to a separate method
def create
  @survey = Survey.find(params[:survey_id])
  @submittable_type = params[:submittable_type_id]
  # Extracted to the method: question_params = ...
  @question = @survey.questions.new(question_params)
  @question.submittable_type = @submittable_type
end

private

def question_params
  params.require(:question)
    .permit(:submittable_type, :title, :options_attributes, :minimum, :maximum)
end

# Step 2: move @submittable_type to question_params method
def create
  @survey = Survey.find(params[:survey_id])
  # Moved: to the method @submittable_type = params[:submittable_type_id]
  @question = @survey.questions.new(question_params)
  # Removed: @question.submittable_type = @submittable_type
end

def question_params
  params.require(:question)
    .permit(:submittable_type, :title, :options_attributes, :minimum, :maximum)
    .merge(params.slice(:submittable_type_id))
end

# Step 3: (taken from the book) extract build_question

def create
  @survey = Survey.find(params[:survey_id])
  @question = build_question(@survey)
end

def build_question(survey)
  survey.questions.new(question_params)
end


