class JobsController < ApplicationController

    def index
        jobs = Job.all
        render json: jobs
    end

    def show
        job = Job.find(params[:id])
        render json: job
    end

    def create
        job = Job.create(title: job_params[:title], description: job_params[:description], length: job_params[:length], pay: job_params[:pay], date: job_params[:date], accept_status: job_params[:accept_status], completed: job_params[:completed], user_id: job_params[:user_id],)
        JobCategory.create(job_id: job.id, category_id: job_params[:category_id])
        render json: job
    end

    def update
        job = Job.find(params[:id])
        job.update(job_params)
        render json: job
    end

    def destroy
        job = Job.find(params[:id])
        user = job.user
        job.destroy
        render json: user
    end

    private
    def job_params
        params.permit(:title, :description, :length, :pay, :date, :accept_status, :completed, :user_id, :category_id)
    end

end
