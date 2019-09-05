require 'test_helper'

class ProgramDummiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program_dummy = program_dummies(:one)
  end

  test "should get index" do
    get program_dummies_url
    assert_response :success
  end

  test "should get new" do
    get new_program_dummy_url
    assert_response :success
  end

  test "should create program_dummy" do
    assert_difference('ProgramDummy.count') do
      post program_dummies_url, params: { program_dummy: { name: @program_dummy.name } }
    end

    assert_redirected_to program_dummy_url(ProgramDummy.last)
  end

  test "should show program_dummy" do
    get program_dummy_url(@program_dummy)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_dummy_url(@program_dummy)
    assert_response :success
  end

  test "should update program_dummy" do
    patch program_dummy_url(@program_dummy), params: { program_dummy: { name: @program_dummy.name } }
    assert_redirected_to program_dummy_url(@program_dummy)
  end

  test "should destroy program_dummy" do
    assert_difference('ProgramDummy.count', -1) do
      delete program_dummy_url(@program_dummy)
    end

    assert_redirected_to program_dummies_url
  end
end
