require "test_helper"

class CartedPlantsControllerTest < ActionDispatch::IntegrationTest
  test "destroy" do
    assert_difference "CartedPlant.count", -1 do
      delete "/carted_plants/#{CartedPlant.first.id}.json"
      assert_response 200
    end
  end
end
