require 'test_helper'

class PratoTipicosControllerTest < ActionController::TestCase
  setup do
    @prato_tipico = prato_tipicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prato_tipicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prato_tipico" do
    assert_difference('PratoTipico.count') do
      post :create, prato_tipico: { municipios_id: @prato_tipico.municipios_id, produtos_id: @prato_tipico.produtos_id }
    end

    assert_redirected_to prato_tipico_path(assigns(:prato_tipico))
  end

  test "should show prato_tipico" do
    get :show, id: @prato_tipico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prato_tipico
    assert_response :success
  end

  test "should update prato_tipico" do
    patch :update, id: @prato_tipico, prato_tipico: { municipios_id: @prato_tipico.municipios_id, produtos_id: @prato_tipico.produtos_id }
    assert_redirected_to prato_tipico_path(assigns(:prato_tipico))
  end

  test "should destroy prato_tipico" do
    assert_difference('PratoTipico.count', -1) do
      delete :destroy, id: @prato_tipico
    end

    assert_redirected_to prato_tipicos_path
  end
end
