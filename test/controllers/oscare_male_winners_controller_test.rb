require 'test_helper'

class OscareMaleWinnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oscare_male_winner = oscare_male_winners(:one)
  end

  test "should get index" do
    get oscare_male_winners_url
    assert_response :success
  end

  test "should get new" do
    get new_oscare_male_winner_url
    assert_response :success
  end

  test "should create oscare_male_winner" do
    assert_difference('OscareMaleWinner.count') do
      post oscare_male_winners_url, params: { oscare_male_winner: { age: @oscare_male_winner.age, movie: @oscare_male_winner.movie, name: @oscare_male_winner.name, winnerId: @oscare_male_winner.winnerId, year: @oscare_male_winner.year } }
    end

    assert_redirected_to oscare_male_winner_url(OscareMaleWinner.last)
  end

  test "should show oscare_male_winner" do
    get oscare_male_winner_url(@oscare_male_winner)
    assert_response :success
  end

  test "should get edit" do
    get edit_oscare_male_winner_url(@oscare_male_winner)
    assert_response :success
  end

  test "should update oscare_male_winner" do
    patch oscare_male_winner_url(@oscare_male_winner), params: { oscare_male_winner: { age: @oscare_male_winner.age, movie: @oscare_male_winner.movie, name: @oscare_male_winner.name, winnerId: @oscare_male_winner.winnerId, year: @oscare_male_winner.year } }
    assert_redirected_to oscare_male_winner_url(@oscare_male_winner)
  end

  test "should destroy oscare_male_winner" do
    assert_difference('OscareMaleWinner.count', -1) do
      delete oscare_male_winner_url(@oscare_male_winner)
    end

    assert_redirected_to oscare_male_winners_url
  end
end
