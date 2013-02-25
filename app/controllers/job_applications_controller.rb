class JobApplicationsController < ApplicationController
  layout "main"

  # GET /job_application_pools/:pool_id/job_applications/:id/target(.:format) target_pool_application
  def target
    @target = JobApplication.find(params[:id]).application_target

    respond_to do |format|
      format.json { render json: @target }
    end
  end

  # GET /job_application_pools/:pool_id/job_applications/:id/dossier(.:format) dossier_pool_application
  def dossier
    @dossier = JobApplication.find(params[:id]).dossier

    respond_to do |format|
      format.json { render json: @dossier }
    end
  end

  # GET /job_application_pools/:pool_id/job_applications(.:format) pool_applications
  def index
    @job_applications = JobApplicationPool.find(params[:pool_id]).job_applications

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_applications }
    end
  end

  # GET /job_application_pools/:pool_id/job_applications/:id(.:format) pool_application
  def show
    @job_application = JobApplication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_application }
    end
  end

  # GET /job_application_pools/:pool_id/job_applications/new(.:format) new_pool_application_path
  def new
    @job_application = JobApplication.new(params[:id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_application }
    end
  end

  # GET /job_application_pools/:pool_id/job_applications/:id/edit(.:format) edit_pool_application
  def edit
    @job_application = JobApplication.find(params[:id])
  end

  # POST job_application_pools/:pool_id/job_applications(.:format)
  def create
    @job_application = JobApplicationPool.find(params[:pool_id]).job_applications.build(params[:job_application])

    respond_to do |format|
      if @job_application.save
        flash[:notice]="Job application was successfully created."
        format.html { redirect_to :action => "show", :id => @job_application.id, :pool_id => @job_application.job_application_pool_id }
        format.json { render json: @job_application, status: :created, location: @job_application }
      else
        format.html { render action: "new" }
        format.json { render json: @job_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_application_pools/:pool_id/job_applications/:id(.:format)
  def update
    @job_application = JobApplication.find(params[:id])

    respond_to do |format|
      if @job_application.update_attributes(params[:job_application])
        flash[:notice]="Job application was successfully updated."
        format.html { redirect_to :action => "show", :id => @job_application.id, :pool_id => @job_application.job_application_pool_id }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_application_pools/:pool_id/job_applications/:id(.:format)
  def destroy
    @job_application = JobApplication.find(params[:id])
    @job_application.destroy

    respond_to do |format|
      format.html { redirect_to pool_applications_path }
      format.json { head :no_content }
    end
  end
end
