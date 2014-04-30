require 'test_helper'

class AssetgroupsControllerTest < ActionController::TestCase
  setup do
    @assetgroup = assetgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assetgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assetgroup" do
    assert_difference('Assetgroup.count') do
      post :create, assetgroup: { custom_id: @assetgroup.custom_id, guid: @assetgroup.guid, recipient_id: @assetgroup.recipient_id }
    end

    assert_redirected_to assetgroup_path(assigns(:assetgroup))
  end

  test "should show assetgroup" do
    get :show, id: @assetgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assetgroup
    assert_response :success
  end

  test "should update assetgroup" do
    patch :update, id: @assetgroup, assetgroup: { custom_id: @assetgroup.custom_id, guid: @assetgroup.guid, recipient_id: @assetgroup.recipient_id }
    assert_redirected_to assetgroup_path(assigns(:assetgroup))
  end

  test "should destroy assetgroup" do
    assert_difference('Assetgroup.count', -1) do
      delete :destroy, id: @assetgroup
    end

    assert_redirected_to assetgroups_path
  end
end
