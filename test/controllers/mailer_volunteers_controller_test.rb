require 'test_helper'

class MailerVolunteersControllerTest < ActionController::TestCase
  setup do
    @mailer_volunteer = mailer_volunteers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailer_volunteers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailer_volunteer" do
    assert_difference('MailerVolunteer.count') do
      post :create, mailer_volunteer: { email: @mailer_volunteer.email, linkedin: @mailer_volunteer.linkedin, name: @mailer_volunteer.name, phone_number: @mailer_volunteer.phone_number, position: @mailer_volunteer.position, reason: @mailer_volunteer.reason }
    end

    assert_redirected_to mailer_volunteer_path(assigns(:mailer_volunteer))
  end

  test "should show mailer_volunteer" do
    get :show, id: @mailer_volunteer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailer_volunteer
    assert_response :success
  end

  test "should update mailer_volunteer" do
    patch :update, id: @mailer_volunteer, mailer_volunteer: { email: @mailer_volunteer.email, linkedin: @mailer_volunteer.linkedin, name: @mailer_volunteer.name, phone_number: @mailer_volunteer.phone_number, position: @mailer_volunteer.position, reason: @mailer_volunteer.reason }
    assert_redirected_to mailer_volunteer_path(assigns(:mailer_volunteer))
  end

  test "should destroy mailer_volunteer" do
    assert_difference('MailerVolunteer.count', -1) do
      delete :destroy, id: @mailer_volunteer
    end

    assert_redirected_to mailer_volunteers_path
  end
end
