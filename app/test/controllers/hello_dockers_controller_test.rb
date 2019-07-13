require 'test_helper'

class HelloDockersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hello_docker = hello_dockers(:one)
  end

  test "should get index" do
    get hello_dockers_url
    assert_response :success
  end

  test "should get new" do
    get new_hello_docker_url
    assert_response :success
  end

  test "should create hello_docker" do
    assert_difference('HelloDocker.count') do
      post hello_dockers_url, params: { hello_docker: { name: @hello_docker.name } }
    end

    assert_redirected_to hello_docker_url(HelloDocker.last)
  end

  test "should show hello_docker" do
    get hello_docker_url(@hello_docker)
    assert_response :success
  end

  test "should get edit" do
    get edit_hello_docker_url(@hello_docker)
    assert_response :success
  end

  test "should update hello_docker" do
    patch hello_docker_url(@hello_docker), params: { hello_docker: { name: @hello_docker.name } }
    assert_redirected_to hello_docker_url(@hello_docker)
  end

  test "should destroy hello_docker" do
    assert_difference('HelloDocker.count', -1) do
      delete hello_docker_url(@hello_docker)
    end

    assert_redirected_to hello_dockers_url
  end
end
