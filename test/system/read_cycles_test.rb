require "application_system_test_case"

class ReadCyclesTest < ApplicationSystemTestCase
  setup do
    @read_cycle = read_cycles(:one)
  end

  test "visiting the index" do
    visit read_cycles_url
    assert_selector "h1", text: "Read Cycles"
  end

  test "creating a Read cycle" do
    visit read_cycles_url
    click_on "New Read Cycle"

    fill_in "Pagesgoal", with: @read_cycle.pagesGoal
    click_on "Create Read cycle"

    assert_text "Read cycle was successfully created"
    click_on "Back"
  end

  test "updating a Read cycle" do
    visit read_cycles_url
    click_on "Edit", match: :first

    fill_in "Pagesgoal", with: @read_cycle.pagesGoal
    click_on "Update Read cycle"

    assert_text "Read cycle was successfully updated"
    click_on "Back"
  end

  test "destroying a Read cycle" do
    visit read_cycles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Read cycle was successfully destroyed"
  end
end
