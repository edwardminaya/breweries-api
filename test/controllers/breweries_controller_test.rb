require "test_helper"

class BreweriesControllerTest < ActionDispatch::IntegrationTest
  # INDEX
  test "index" do
    get "/breweries.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Brewery.count, data.length
  end
end
