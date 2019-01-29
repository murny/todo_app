# frozen_string_literal: true

require 'test_helper'

class TodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo = todos(:one)
  end

  test 'should get index' do
    get root_url
    assert_response :success
  end

  test 'should get new' do
    get new_todo_url
    assert_response :success
  end

  test 'should create todo' do
    assert_difference('Todo.count') do
      post todos_url, params: { todo: { title: @todo.title } }
    end

    assert_redirected_to root_url
  end

  test 'should get edit' do
    get edit_todo_url(@todo)
    assert_response :success
  end

  test 'should update todo' do
    patch todo_url(@todo), params: { todo: { title: @todo.title } }
    assert_redirected_to root_url
  end

  test 'should destroy todo' do
    assert_difference('Todo.count', -1) do
      delete todo_url(@todo)
    end

    assert_redirected_to root_url
  end
end
