require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get entries_url, as: :json
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post entries_url, params: { entry: { entry_time: @entry.entry_time, exit_time: @entry.exit_time, parking_id: @entry.parking_id, price: @entry.price, rate_id: @entry.rate_id, total_time: @entry.total_time, vehicle_id: @entry.vehicle_id } }, as: :json
    end

    assert_response 201
  end

  test "should show entry" do
    get entry_url(@entry), as: :json
    assert_response :success
  end

  test "should update entry" do
    patch entry_url(@entry), params: { entry: { entry_time: @entry.entry_time, exit_time: @entry.exit_time, parking_id: @entry.parking_id, price: @entry.price, rate_id: @entry.rate_id, total_time: @entry.total_time, vehicle_id: @entry.vehicle_id } }, as: :json
    assert_response 200
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete entry_url(@entry), as: :json
    end

    assert_response 204
  end
end
