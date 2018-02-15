require 'test_helper'

class OscareFemaleWinnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oscare_female_winner = oscare_female_winners(:one)
  end

  test "should get index" do
    get oscare_female_winners_url
    assert_response :success
  end

  test "should get new" do
    get new_oscare_female_winner_url
    assert_response :success
  end

  test "should create oscare_female_winner" do
    assert_difference('OscareFemaleWinner.count') do
      post oscare_female_winners_url, params: { oscare_female_winner: { age: @oscare_female_winner.age, movie: @oscare_female_winner.movie, name: @oscare_female_winner.name, winnerId: @oscare_female_winner.winnerId, year: @oscare_female_winner.year } }
    end

    assert_redirected_to oscare_female_winner_url(OscareFemaleWinner.last)
  end

  test "should show oscare_female_winner" do
    get oscare_female_winner_url(@oscare_female_winner)
    assert_response :success
  end

  test "should get edit" do
    get edit_oscare_female_winner_url(@oscare_female_winner)
    assert_response :success
  end

  test "should update oscare_female_winner" do
    patch oscare_female_winner_url(@oscare_female_winner), params: { oscare_female_winner: { age: @oscare_female_winner.age, movie: @oscare_female_winner.movie, name: @oscare_female_winner.name, winnerId: @oscare_female_winner.winnerId, year: @oscare_female_winner.year } }
    assert_redirected_to oscare_female_winner_url(@oscare_female_winner)
  end

  test "should destroy oscare_female_winner" do
    assert_difference('OscareFemaleWinner.count', -1) do
      delete oscare_female_winner_url(@oscare_female_winner)
    end

    assert_redirected_to oscare_female_winners_url
  end
end
