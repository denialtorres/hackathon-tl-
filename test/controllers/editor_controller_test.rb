require 'test_helper'

class EditorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get editor_index_url
    assert_response :success
  end

end
