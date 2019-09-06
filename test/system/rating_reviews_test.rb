require "application_system_test_case"

class RatingReviewsTest < ApplicationSystemTestCase
  setup do
    @rating_review = rating_reviews(:one)
  end

  test "visiting the index" do
    visit rating_reviews_url
    assert_selector "h1", text: "Rating Reviews"
  end

  test "creating a Rating review" do
    visit rating_reviews_url
    click_on "New Rating Review"

    fill_in "Comment", with: @rating_review.comment
    fill_in "Product", with: @rating_review.product_id
    fill_in "Review", with: @rating_review.review
    fill_in "User", with: @rating_review.user_id
    click_on "Create Rating review"

    assert_text "Rating review was successfully created"
    click_on "Back"
  end

  test "updating a Rating review" do
    visit rating_reviews_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @rating_review.comment
    fill_in "Product", with: @rating_review.product_id
    fill_in "Review", with: @rating_review.review
    fill_in "User", with: @rating_review.user_id
    click_on "Update Rating review"

    assert_text "Rating review was successfully updated"
    click_on "Back"
  end

  test "destroying a Rating review" do
    visit rating_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rating review was successfully destroyed"
  end
end
