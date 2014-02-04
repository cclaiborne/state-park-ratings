require "test_helper"

class RatingsControllerTest < ActionController::TestCase

  before do
    @rating = ratings(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ratings)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Rating.count') do
      post :create, rating: {  }
    end

    assert_redirected_to rating_path(assigns(:rating))
  end

  def test_show
    get :show, id: @rating
    assert_response :success
  end

  def test_edit
    get :edit, id: @rating
    assert_response :success
  end

  def test_update
    put :update, id: @rating, rating: {  }
    assert_redirected_to rating_path(assigns(:rating))
  end

  def test_destroy
    assert_difference('Rating.count', -1) do
      delete :destroy, id: @rating
    end

    assert_redirected_to ratings_path
  end
end
