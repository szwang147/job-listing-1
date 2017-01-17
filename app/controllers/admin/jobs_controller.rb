class Admin::JobsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
    before_action :require_is_admin
    layout "admin"
    def index
      @jobs = Job.all
    end
    def new
      @job = Job.new
    end

    def create
      @job = Job.new(job_params)

      if @job.save
        redirect_to admin_jobs_path, notice:"create success"
      else
        render :new
      end
    end

    def show
      @job = Job.find(params[:id])
    end
    def edit
      @job = Job.find(params[:id])
    end

    def update
      @job = Job.find(params[:id])
      if @job.update(job_params)
        redirect_to admin_jobs_path, notice:"update success"
      else
        render :edit
      end
    end

    def destroy
      @job = Job.find(params[:id])
      @job.destroy
      redirect_to admin_jobs_path, alert:"delete success"
    end

    # 这段，搬到 application_controller.rb
    # def require_is_admin
    #   # if current_user.email != '1@1'
    #     if !current_user.admin?
    #     redirect_to root_path, alert:"you are not admin"
    #   end
    # end
    def publish
      @job = Job.find(params[:id])
      @job.publish!
      redirect_to :back
    end
    def hide
      @job = Job.find(params[:id])
      @job.hide!
      redirect_to :back
    end
  private
    def job_params
      params.require(:job).permit(:title, :description, :wage_lower_bound, :wage_upper_bound, :contact_email, :is_hidden)
    end
  end
