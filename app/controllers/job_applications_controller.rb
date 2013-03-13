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
    if @job_applications.empty?
      @job_application = JobApplication.new
      @application_target = ApplicationTarget.new
      @dossier = Dossier.new
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_applications }
    end
  end

  # GET /job_application_pools/:pool_id/job_applications/:id(.:format) pool_application
  def show
    @job_application = JobApplication.find(params[:id])
    @application_target = @job_application.application_target
    @dossier = @job_application.dossier

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_application }
    end
  end

  # GET /job_application_pools/:pool_id/job_applications/new(.:format) new_pool_application_path
  def new
    @job_application = JobApplication.new
    @application_target = ApplicationTarget.new
    @dossier = Dossier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_application }
    end
  end

  # GET /job_application_pools/:pool_id/job_applications/:id/edit(.:format) edit_pool_application
  def edit
    @job_application = JobApplication.find(params[:id])
    @application_target = @job_application.application_target
    @dossier = @job_application.dossier
  end

  # POST job_application_pools/:pool_id/job_applications(.:format)
  def create
    respond_to do |format|
      begin
        @pool = JobApplicationPool.find(params[:pool_id])
        @job_application = JobApplication.new(params[:job_application])
        @application_target = ApplicationTarget.new(params[:application_target])
        @dossier = Dossier.new(params[:dossier])

        if @job_application.valid?
          if @application_target.valid?
            @job_application.save!
            @job_application.application_target=@application_target
            @job_application.dossier=@dossier
            @pool.job_applications << @job_application

            flash[:notice] = "Job application was successfully created."
            format.html { redirect_to :action => "show", :id => @job_application.id,
                                      :pool_id => @job_application.job_application_pool_id }
            format.json { render json: @job_application, status: :created, location: @job_application }
          else
            format.html { render action: "new" }
            format.json { render json: @application_target.errors, status: :unprocessable_entity }
          end
        else
          format.html { render action: "new" }
          format.json { render json: @job_application.errors, status: :unprocessable_entity }
        end
      rescue ActiveRecord::ActiveRecordError => error
        logger.error("Attempt to save new JobApplication record failed -> (#{e})")
        flash[:error] = "Attempt to save new JobApplication record failed"
        format.html { render action: "new" }
        format.json { render json: @job_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_application_pools/:pool_id/job_applications/:id(.:format)
  def update
    respond_to do |format|
      begin
        @job_application = JobApplication.find(params[:id])
        @application_target = @job_application.application_target
        @dossier = @job_application.dossier.update_attributes(params[:dossier])

        if @job_application.update_attributes(params[:job_application])
          if @application_target.update_attributes(params[:application_target])
            flash[:notice] = "Job application was successfully updated."
            format.html { redirect_to :action => "show", :id => @job_application.id, :pool_id => @job_application.job_application_pool_id }
            format.json { head :no_content }
          else
            format.html { render action: "edit" }
            format.json { render json: @application_target.errors, status: :unprocessable_entity }
          end
        else
          format.html { render action: "edit" }
          format.json { render json: @job_application.errors, status: :unprocessable_entity }
        end
      rescue ActiveRecord::RecordInvalid => error
        logger.error("Attempt to update JobApplication record #{params[:id]} failed -> (#{e})")
        flash[:error] = "Attempt to save new JobApplication record #{params[:id]} failed"
        format.html { render action: "new" }
        format.json { render json: @job_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_application_pools/:pool_id/job_applications/:id(.:format)
  def destroy
    @job_application = JobApplication.find(params[:id])
    @job_application.destroy

    respond_to do |format|
      format.html { redirect_to pool_applications_path, notice: "Job application #{params[:id]} was deleted." }
      format.json { head :no_content }
    end
  end
end
