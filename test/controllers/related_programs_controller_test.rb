require 'test_helper'

class RelatedProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @related_program = related_programs(:one)
  end

  test "should get index" do
    get related_programs_url
    assert_response :success
  end

  test "should get new" do
    get new_related_program_url
    assert_response :success
  end

  test "should create related_program" do
    assert_difference('RelatedProgram.count') do
      post related_programs_url, params: { related_program: { child: @related_program.child, parent: @related_program.parent } }
    end

    assert_redirected_to related_program_url(RelatedProgram.last)
  end

  test "should show related_program" do
    get related_program_url(@related_program)
    assert_response :success
  end

  test "should get edit" do
    get edit_related_program_url(@related_program)
    assert_response :success
  end

  test "should update related_program" do
    patch related_program_url(@related_program), params: { related_program: { child: @related_program.child, parent: @related_program.parent } }
    assert_redirected_to related_program_url(@related_program)
  end

  test "should destroy related_program" do
    assert_difference('RelatedProgram.count', -1) do
      delete related_program_url(@related_program)
    end

    assert_redirected_to related_programs_url
  end
end
