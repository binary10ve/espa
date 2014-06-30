require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { address: @client.address, birthdate: @client.birthdate, email_id: @client.email_id, first_name: @client.first_name, how_met_id: @client.how_met_id, last_name: @client.last_name, notes: @client.notes, phone1: @client.phone1, phone2: @client.phone2 }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { address: @client.address, birthdate: @client.birthdate, email_id: @client.email_id, first_name: @client.first_name, how_met_id: @client.how_met_id, last_name: @client.last_name, notes: @client.notes, phone1: @client.phone1, phone2: @client.phone2 }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
