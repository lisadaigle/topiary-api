require "test_helper"

class UserPlantsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "UserPlant.count", 1 do
      post "/user_plants.json", params: { user_id: 3, plant_id: 1, nickname: "Lucy" }
      assert_response 200
    end
  end
end
