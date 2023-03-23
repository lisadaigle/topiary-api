require "test_helper"

class UserPlantsControllerTest < ActionDispatch::IntegrationTest


  test "create" do
    assert_difference "UserPlant.count", 1 do
      post "/user_plants.json", params: { id: 1, user_id: 2, plant_id: 2, nickname: "Henry" }
      assert_response 200
    end
  end

  test "index" do
    get "/user_plants.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal UserPlant.count, data.length
  end
end
