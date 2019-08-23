require 'test_helper'

class ParticipationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get participations_index_url
    assert_response :success
  end

  test "should get new" do
    get participations_new_url
    assert_response :success
  end

  test "should get edit" do
    get participations_edit_url
    assert_response :success
  end

end
