require 'test_helper'

class ReadCyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @read_cycle = read_cycles(:one)
  end

  test "should get index" do
    get read_cycles_url
    assert_response :success
  end

  test "should get new" do
    get new_read_cycle_url
    assert_response :success
  end

  test "should create read_cycle" do
    assert_difference('ReadCycle.count') do
      post read_cycles_url, params: { read_cycle: { pagesGoal: @read_cycle.pagesGoal } }
    end

    assert_redirected_to read_cycle_url(ReadCycle.last)
  end

  test "should show read_cycle" do
    get read_cycle_url(@read_cycle)
    assert_response :success
  end

  test "should get edit" do
    get edit_read_cycle_url(@read_cycle)
    assert_response :success
  end

  test "should update read_cycle" do
    patch read_cycle_url(@read_cycle), params: { read_cycle: { pagesGoal: @read_cycle.pagesGoal } }
    assert_redirected_to read_cycle_url(@read_cycle)
  end

  test "should destroy read_cycle" do
    assert_difference('ReadCycle.count', -1) do
      delete read_cycle_url(@read_cycle)
    end

    assert_redirected_to read_cycles_url
  end
end
