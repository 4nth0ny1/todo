require "test_helper"

class WorktypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @worktype = worktypes(:one)
  end

  test "should get index" do
    get worktypes_url
    assert_response :success
  end

  test "should get new" do
    get new_worktype_url
    assert_response :success
  end

  test "should create worktype" do
    assert_difference('Worktype.count') do
      post worktypes_url, params: { worktype: { type: @worktype.type } }
    end

    assert_redirected_to worktype_url(Worktype.last)
  end

  test "should show worktype" do
    get worktype_url(@worktype)
    assert_response :success
  end

  test "should get edit" do
    get edit_worktype_url(@worktype)
    assert_response :success
  end

  test "should update worktype" do
    patch worktype_url(@worktype), params: { worktype: { type: @worktype.type } }
    assert_redirected_to worktype_url(@worktype)
  end

  test "should destroy worktype" do
    assert_difference('Worktype.count', -1) do
      delete worktype_url(@worktype)
    end

    assert_redirected_to worktypes_url
  end
end
