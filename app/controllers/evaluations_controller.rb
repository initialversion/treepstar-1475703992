class EvaluationsController < ApplicationController
  def index
    @evaluations = Evaluation.all
  end

  def show
    @evaluation = Evaluation.find(params[:id])
  end

  def new
    @evaluation = Evaluation.new
  end

  def create
    @evaluation = Evaluation.new
    @evaluation.reviewer_id = params[:reviewer_id]
    @evaluation.reviewee_id = params[:reviewee_id]

    if @evaluation.save
      redirect_to "/evaluations", :notice => "Evaluation created successfully."
    else
      render 'new'
    end
  end

  def edit
    @evaluation = Evaluation.find(params[:id])
  end

  def update
    @evaluation = Evaluation.find(params[:id])

    @evaluation.reviewer_id = params[:reviewer_id]
    @evaluation.reviewee_id = params[:reviewee_id]

    if @evaluation.save
      redirect_to "/evaluations", :notice => "Evaluation updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @evaluation = Evaluation.find(params[:id])

    @evaluation.destroy

    redirect_to "/evaluations", :notice => "Evaluation deleted."
  end
end
