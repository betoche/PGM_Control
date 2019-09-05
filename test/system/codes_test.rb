require "application_system_test_case"

class CodesTest < ApplicationSystemTestCase
  setup do
    @code = codes(:one)
  end

  test "visiting the index" do
    visit codes_url
    assert_selector "h1", text: "Codes"
  end

  test "creating a Code" do
    visit codes_url
    click_on "New Code"

    fill_in "Code", with: @code.code
    check "Daily" if @code.daily
    fill_in "Description", with: @code.description
    fill_in "Home dir", with: @code.home_dir
    fill_in "Input", with: @code.input
    fill_in "Operation", with: @code.operation
    fill_in "Output", with: @code.output
    click_on "Create Code"

    assert_text "Code was successfully created"
    click_on "Back"
  end

  test "updating a Code" do
    visit codes_url
    click_on "Edit", match: :first

    fill_in "Code", with: @code.code
    check "Daily" if @code.daily
    fill_in "Description", with: @code.description
    fill_in "Home dir", with: @code.home_dir
    fill_in "Input", with: @code.input
    fill_in "Operation", with: @code.operation
    fill_in "Output", with: @code.output
    click_on "Update Code"

    assert_text "Code was successfully updated"
    click_on "Back"
  end

  test "destroying a Code" do
    visit codes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code was successfully destroyed"
  end
end
