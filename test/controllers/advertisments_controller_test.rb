require 'test_helper'

class AdvertismentsControllerTest < ActionController::TestCase
  setup do
    @advertisment = advertisments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advertisments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advertisment" do
    assert_difference('Advertisment.count') do
      post :create, advertisment: { category: @advertisment.category, description: @advertisment.description, employer_id: @advertisment.employer_id, expire: @advertisment.expire, job_type: @advertisment.job_type, location: @advertisment.location, number_of_positions: @advertisment.number_of_positions, reciving_email: @advertisment.reciving_email, title: @advertisment.title }
    end

    assert_redirected_to advertisment_path(assigns(:advertisment))
  end

  test "should show advertisment" do
    get :show, id: @advertisment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advertisment
    assert_response :success
  end

  test "should update advertisment" do
    patch :update, id: @advertisment, advertisment: { category: @advertisment.category, description: @advertisment.description, employer_id: @advertisment.employer_id, expire: @advertisment.expire, job_type: @advertisment.job_type, location: @advertisment.location, number_of_positions: @advertisment.number_of_positions, reciving_email: @advertisment.reciving_email, title: @advertisment.title }
    assert_redirected_to advertisment_path(assigns(:advertisment))
  end

  test "should destroy advertisment" do
    assert_difference('Advertisment.count', -1) do
      delete :destroy, id: @advertisment
    end

    assert_redirected_to advertisments_path
  end
end
