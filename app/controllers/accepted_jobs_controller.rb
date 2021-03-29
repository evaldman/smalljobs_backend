class AcceptedJobsController < ApplicationController

    def index
        accepted_jobs = AcceptedJob.all
        render json: accepted_jobs
    end

    def create
        accepted_job = AcceptedJob.create(completed: accepted_params[:completed], job_id:  accepted_params[:job_id], user_id: accepted_params[:user_id],)
        user = User.find(accepted_params[:user_id])
        job = Job.find(accepted_params[:job_id])
        job.update(accept_status: accepted_params[:accept_status])
        render json: {job: JobSerializer.new(job), currentUser: UserSerializer.new(user)}
        
    end

    def destroy
        accepted_job = AcceptedJob.find(params[:id])
        user = User.find(accepted_params[:user_id])
        job = Job.find(accepted_params[:job_id])
        job.update(accept_status: accepted_params[:accept_status])
        accepted_job.delete
        render json:{job: JobSerializer.new(job), currentUser: UserSerializer.new(user)}
    end

    def accepted_params
        params.permit(:completed, :job_id, :user_id, :accept_status)
    end

end
