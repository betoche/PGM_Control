require 'test_helper'

class ProgramRelationshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program_relationship = program_relationships(:one)
  end

  test "should get index" do
    get program_relationships_url
    assert_response :success
  end

  test "should get new" do
    get new_program_relationship_url
    assert_response :success
  end

  test "should create program_relationship" do
    assert_difference('ProgramRelationship.count') do
      post program_relationships_url, params: { program_relationship: { child_id: @program_relationship.child_id, parent_id: @program_relationship.parent_id } }
    end

    assert_redirected_to program_relationship_url(ProgramRelationship.last)
  end

  test "should show program_relationship" do
    get program_relationship_url(@program_relationship)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_relationship_url(@program_relationship)
    assert_response :success
  end

  test "should update program_relationship" do
    patch program_relationship_url(@program_relationship), params: { program_relationship: { child_id: @program_relationship.child_id, parent_id: @program_relationship.parent_id } }
    assert_redirected_to program_relationship_url(@program_relationship)
  end

  test "should destroy program_relationship" do
    assert_difference('ProgramRelationship.count', -1) do
      delete program_relationship_url(@program_relationship)
    end

    assert_redirected_to program_relationships_url
  end
end
