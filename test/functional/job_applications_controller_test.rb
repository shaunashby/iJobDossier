require 'test_helper'

class JobApplicationsControllerTest < ActionController::TestCase
  setup do
    @job_application = job_applications(:one)
  end

  test "route should match job_applications#dossier" do
    assert_routing '/job_application_pools/1/job_applications/1/dossier', {
      :controller => "job_applications",
      :action => "dossier",
      :pool_id => "1",
      :id => "1"
    }
  end

  test "route should match job_applications#target" do
    assert_routing '/job_application_pools/1/job_applications/1/target', {
      :controller => "job_applications",
      :action => "target",
      :pool_id => "1",
      :id => "1"
    }
  end

  test "route should match job_applications#index" do
    assert_routing '/job_application_pools/1/job_applications', {
      :controller => "job_applications",
      :action => "index",
      :pool_id => "1"
    }
  end

  test "route should match job_applications#new" do
    assert_routing '/job_application_pools/1/job_applications/new', {
      :controller => "job_applications",
      :action => "new",
      :pool_id => "1"
    }
  end

  test "route should match job_applications#edit" do
    assert_routing '/job_application_pools/1/job_applications/1/edit', {
      :controller => "job_applications",
      :action => "edit",
      :pool_id => "1",
      :id => "1"
    }
  end

  test "route should match job_applications#show" do
    assert_routing '/job_application_pools/1/job_applications/1', {
      :controller => "job_applications",
      :action => "show",
      :pool_id => "1",
      :id => "1"
    }
  end

  test "should destroy job_application" do
    assert_difference('JobApplication.count', -1) do
      delete :destroy, id: @job_application
    end

    assert_redirected_to job_applications_path
  end
end
