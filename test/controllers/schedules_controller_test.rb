require "test_helper"

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/schedules.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Schedule.count, data.length
  end

  test "create" do
    assert_difference "Schedule.count", 1 do
      post "/schedules.json", params: {
                                plant_id: 1,
                                user_id: 1,
                                image_url: "https://example.com/image.jpg",
                                watering_start_date: Time.now,
                              }
      assert_response 200
    end
  end
end
