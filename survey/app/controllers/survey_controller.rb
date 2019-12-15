class SurveyController < ApplicationController
  def show
    session[:submit] ||= 0
  end

  def create
    survey = Form.create(form_params)
    puts survey
    if survey.valid?
      session[:submit]+=1
      flash[:success] = "You have submitted this form. You submitted this form #{session[:submit]} times."
      puts session[:submit]
      
      redirect_to "/results"
    end
  end
  
  def result

    @result = Form.last
  end

  private
    def form_params
      params.require(:form).permit(:name,:location,:language,:comment)
    end
end
