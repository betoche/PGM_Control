require 'test_helper'

class ProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program = programs(:one)
  end

  test "should get index" do
    get programs_url
    assert_response :success
  end

  test "should get new" do
    get new_program_url
    assert_response :success
  end

  test "should create program" do
    assert_difference('Program.count') do
      post programs_url, params: { program: { code_id: @program.code_id, is_ready: @program.is_ready, is_sftp: @program.is_sftp, library_id: @program.library_id, member: @program.member, source_file_id: @program.source_file_id, transfers: @program.transfers } }
    end

    assert_redirected_to program_url(Program.last)
  end

  test "should show program" do
    get program_url(@program)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_url(@program)
    assert_response :success
  end

  test "should update program" do
    patch program_url(@program), params: { program: { code_id: @program.code_id, is_ready: @program.is_ready, is_sftp: @program.is_sftp, library_id: @program.library_id, member: @program.member, source_file_id: @program.source_file_id, transfers: @program.transfers } }
    assert_redirected_to program_url(@program)
  end

  test "should destroy program" do
    assert_difference('Program.count', -1) do
      delete program_url(@program)
    end

    assert_redirected_to programs_url
  end
end
