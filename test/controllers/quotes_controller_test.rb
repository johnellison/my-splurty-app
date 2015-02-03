require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "quote show test" do
    quote = FactoryGirl.create(:quote)
    get :show, :id => quote.id
    assert_response :success
  end

  test "quote show page, not found" do
    get :show, :id => 'NO'
    assert_response :not_found
  end

end
