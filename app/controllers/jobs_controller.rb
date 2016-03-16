class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_company!, except: [:index,:prime, :show]

  respond_to :html

  def index
    @jobs = Job.all
    respond_with(@jobs)
  end

  def prime
    @jobs = Job.most_recent.paginate(page: params[:page], per_page: 3)
  end

  def show
    respond_with(@job)
  end

  def new
    @job = Job.new
    respond_with(@job)
  end

  def edit
  end

  def create
    @job = Job.new(job_params)
    @job.save
    respond_with(@job)
  end

  def update
    @job.update(job_params)
    respond_with(@job)
  end

  def destroy
    @job.destroy
    respond_with(@job)
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:title, :description, :prime)
    end
end