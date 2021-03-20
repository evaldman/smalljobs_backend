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
        job = Job.create(job_params)
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

    def job_params
        params.permit(:title, :description, :length, :pay, :date, :accept_status, :completed, :user_id)
    end

end
