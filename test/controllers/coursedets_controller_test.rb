require 'test_helper'

class CoursedetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coursedets_index_url
    assert_response :success
  end

  test "should get show" do
    get coursedets_show_url
    assert_response :success
  end

  test "should get new" do
    get coursedets_new_url
    assert_response :success
  end

  test "should get create" do
    get coursedets_create_url
    assert_response :success
  end

  test "should get update" do
    get coursedets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get coursedets_destroy_url
    assert_response :success
  end

end
