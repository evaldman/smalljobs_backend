class AcceptedJobsController < ApplicationController

    def index
        accepted_jobs = AcceptedJob.all
        render json: accepted_jobs
    end

    def create
        accepted_job = AcceptedJob.create(accepted_params)
        render json: accepted_job
    end

    def destroy
        accepted_job = AcceptedJob.find(params[:id])
        accepted_job.delete
    end

    def accepted_params
        params.permit(:completed, :job_id, :user_id)
    end
end
