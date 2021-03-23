class JobCategoriesController < ApplicationController

    def update
        jobcat = JobCategory.find(params[:id])
        jobcat.update(jobcat_params)
    end

    def destroy
        jobcat = JobCategory.find(params[:id])
        jobcat.destroy
    end

    private
    def jobcat_params
        params.permit(:job_id, :category_id)
    end
end
