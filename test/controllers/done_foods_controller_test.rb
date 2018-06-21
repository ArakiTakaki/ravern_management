require 'test_helper'

class DoneFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @done_food = done_foods(:one)
  end

  test "should get index" do
    get done_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_done_food_url
    assert_response :success
  end

  test "should create done_food" do
    assert_difference('DoneFood.count') do
      post done_foods_url, params: { done_food: { Client_id: @done_food.Client_id, Food_id: @done_food.Food_id, count: @done_food.count } }
    end

    assert_redirected_to done_food_url(DoneFood.last)
  end

  test "should show done_food" do
    get done_food_url(@done_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_done_food_url(@done_food)
    assert_response :success
  end

  test "should update done_food" do
    patch done_food_url(@done_food), params: { done_food: { Client_id: @done_food.Client_id, Food_id: @done_food.Food_id, count: @done_food.count } }
    assert_redirected_to done_food_url(@done_food)
  end

  test "should destroy done_food" do
    assert_difference('DoneFood.count', -1) do
      delete done_food_url(@done_food)
    end

    assert_redirected_to done_foods_url
  end
end
