require 'test_helper'

class MytopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mytopic = mytopics(:one)
  end

  test "should get index" do
    get mytopics_url
    assert_response :success
  end

  test "should get new" do
    get new_mytopic_url
    assert_response :success
  end

  test "should create mytopic" do
    assert_difference('Mytopic.count') do
      post mytopics_url, params: { mytopic: { description: @mytopic.description, title: @mytopic.title } }
    end

    assert_redirected_to mytopic_url(Mytopic.last)
  end

  test "should show mytopic" do
    get mytopic_url(@mytopic)
    assert_response :success
  end

  test "should get edit" do
    get edit_mytopic_url(@mytopic)
    assert_response :success
  end

  test "should update mytopic" do
    patch mytopic_url(@mytopic), params: { mytopic: { description: @mytopic.description, title: @mytopic.title } }
    assert_redirected_to mytopic_url(@mytopic)
  end

  test "should destroy mytopic" do
    assert_difference('Mytopic.count', -1) do
      delete mytopic_url(@mytopic)
    end

    assert_redirected_to mytopics_url
  end
end
