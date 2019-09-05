require "application_system_test_case"

class ProgramsTest < ApplicationSystemTestCase
  setup do
    @program = programs(:one)
  end

  test "visiting the index" do
    visit programs_url
    assert_selector "h1", text: "Programs"
  end

  test "creating a Program" do
    visit programs_url
    click_on "New Program"

    fill_in "Code", with: @program.code_id
    check "Is ready" if @program.is_ready
    check "Is sftp" if @program.is_sftp
    fill_in "Library", with: @program.library_id
    fill_in "Member", with: @program.member
    fill_in "Source file", with: @program.source_file_id
    fill_in "Transfers", with: @program.transfers
    click_on "Create Program"

    assert_text "Program was successfully created"
    click_on "Back"
  end

  test "updating a Program" do
    visit programs_url
    click_on "Edit", match: :first

    fill_in "Code", with: @program.code_id
    check "Is ready" if @program.is_ready
    check "Is sftp" if @program.is_sftp
    fill_in "Library", with: @program.library_id
    fill_in "Member", with: @program.member
    fill_in "Source file", with: @program.source_file_id
    fill_in "Transfers", with: @program.transfers
    click_on "Update Program"

    assert_text "Program was successfully updated"
    click_on "Back"
  end

  test "destroying a Program" do
    visit programs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Program was successfully destroyed"
  end
end
