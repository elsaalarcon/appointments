require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { address: @profile.address, birth: @profile.birth, city: @profile.city, driver_license: @profile.driver_license, first_name: @profile.first_name, gender: @profile.gender, last_name: @profile.last_name, license: @profile.license, phone: @profile.phone, speciality_id: @profile.speciality_id, state: @profile.state, user_id: @profile.user_id, zip_code: @profile.zip_code } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { address: @profile.address, birth: @profile.birth, city: @profile.city, driver_license: @profile.driver_license, first_name: @profile.first_name, gender: @profile.gender, last_name: @profile.last_name, license: @profile.license, phone: @profile.phone, speciality_id: @profile.speciality_id, state: @profile.state, user_id: @profile.user_id, zip_code: @profile.zip_code } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
