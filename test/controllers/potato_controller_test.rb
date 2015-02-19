require 'test_helper'

class PotatoControllerTest < ActionController::TestCase
  test "should get potatoer" do
    get :potatoer
    assert_response :success
  end

end
