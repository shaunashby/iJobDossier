class JobApplicationPoolsController < ApplicationController
  layout "main"

  # GET /
  def welcome
    @job_application_pools = JobApplicationPool.all
  end

  # GET /job_application_pools
  # GET /job_application_pools.json
  def index
    @job_application_pools = JobApplicationPool.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_application_pools }
    end
  end

  # GET /job_application_pools/1
  # GET /job_application_pools/1.json
  def show
    @job_application_pool = JobApplicationPool.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_application_pool }
    end
  end

  # GET /job_application_pools/new
  # GET /job_application_pools/new.json
  def new
    @job_application_pool = JobApplicationPool.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_application_pool }
    end
  end

  # GET /job_application_pools/1/edit
  def edit
    @job_application_pool = JobApplicationPool.find(params[:id])
  end

  # POST /job_application_pools
  # POST /job_application_pools.json
  def create
    @job_application_pool = JobApplicationPool.new(params[:job_application_pool])

    respond_to do |format|
      if @job_application_pool.save
        format.html { redirect_to pool_path(@job_application_pool), notice: 'Job application pool was successfully created.' }
        format.json { render json: @job_application_pool, status: :created, location: @job_application_pool }
      else
        format.html { render action: "new" }
        format.json { render json: @job_application_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_application_pools/1
  # PUT /job_application_pools/1.json
  def update
    @job_application_pool = JobApplicationPool.find(params[:id])

    respond_to do |format|
      if @job_application_pool.update_attributes(params[:job_application_pool])
        format.html { redirect_to pool_path(@job_application_pool), notice: 'Job application pool was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_application_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_application_pools/1
  # DELETE /job_application_pools/1.json
  def destroy
    @job_application_pool = JobApplicationPool.find(params[:id])
    @job_application_pool.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end
end
