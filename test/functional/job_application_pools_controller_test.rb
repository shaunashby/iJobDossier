require 'test_helper'

class JobApplicationPoolsControllerTest < ActionController::TestCase
  setup do
    @job_application_pool = job_application_pools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_application_pools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_application_pool" do
    assert_difference('JobApplicationPool.count') do
      post :create, job_application_pool: { user: @job_application_pool.user }
    end

    assert_redirected_to job_application_pool_path(assigns(:job_application_pool))
  end

  test "should show job_application_pool" do
    get :show, id: @job_application_pool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_application_pool
    assert_response :success
  end

  test "should update job_application_pool" do
    put :update, id: @job_application_pool, job_application_pool: { user: @job_application_pool.user }
    assert_redirected_to job_application_pool_path(assigns(:job_application_pool))
  end

  test "should destroy job_application_pool" do
    assert_difference('JobApplicationPool.count', -1) do
      delete :destroy, id: @job_application_pool
    end

    assert_redirected_to job_application_pools_path
  end
end
