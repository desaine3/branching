require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { completed: @task.completed, end_Date: @task.end_Date, start_date: @task.start_date, trip_Area: @task.trip_Area, trip_Cost: @task.trip_Cost, trip_Leaders: @task.trip_Leaders, trip_Location: @task.trip_Location, trip_Name: @task.trip_Name, trip_description: @task.trip_description }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { completed: @task.completed, end_Date: @task.end_Date, start_date: @task.start_date, trip_Area: @task.trip_Area, trip_Cost: @task.trip_Cost, trip_Leaders: @task.trip_Leaders, trip_Location: @task.trip_Location, trip_Name: @task.trip_Name, trip_description: @task.trip_description }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
