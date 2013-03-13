class JobApplicationPoolsController < ApplicationController
  layout "main"

  # GET / root
  def welcome
    @job_application_pools = JobApplicationPool.all
    @job_application_pool = JobApplicationPool.new
  end

  # GET /job_application_pools(.:format) pools
  def index
    @job_application_pools = JobApplicationPool.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_application_pools }
    end
  end

  # GET /job_application_pools/:id(.:format) pool
  def show
    @job_application_pool = JobApplicationPool.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_application_pool }
    end
  end

  # GET /job_application_pools/new(.:format) new_pool
  def new
    @job_application_pool = JobApplicationPool.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_application_pool }
      format.js
    end
  end

  # GET /job_application_pools/:id/edit(.:format) edit_pool
  def edit
    @job_application_pool = JobApplicationPool.find(params[:id])
  end

  # POST /job_application_pools(.:format)
  def create
    @job_application_pool = JobApplicationPool.new(params[:job_application_pool])

    respond_to do |format|
      begin
        @job_application_pool.save!
        format.html { redirect_to pool_path(@job_application_pool), notice: "Job application pool was successfully created." }
        format.json { render json: @job_application_pool, status: :created, location: @job_application_pool }
      rescue ActiveRecord::ActiveRecordError => error
        logger.error("Attempt to save new JobApplicationPool record failed -> (#{error})")
        flash[:error] = "Attempt to save new JobApplicationPool record failed"
        format.html { render action: "new" }
        format.json { render json: @job_application_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_application_pools/:id(.:format)
  def update
    @job_application_pool = JobApplicationPool.find(params[:id])

    respond_to do |format|
      begin
        @job_application_pool.update_attributes(params[:job_application_pool])
        format.html { redirect_to pool_path(@job_application_pool), notice: "Job application pool was successfully updated." }
        format.json { head :no_content }
      rescue ActiveRecord::ActiveRecordError => error
        logger.error("Attempt to update JobApplicationPool record ID #{params[:id]} failed -> (#{error})")
        flash[:error] = "Attempt to update JobApplicationPool record ID #{params[:id]} failed"
        format.html { render action: "edit" }
        format.json { render json: @job_application_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_application_pools/:id(.:format)
  def destroy
    @job_application_pool = JobApplicationPool.find(params[:id])
    @job_application_pool.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Job application pool #{params[:id]} was deleted." }
      format.json { head :no_content }
    end
  end
end
