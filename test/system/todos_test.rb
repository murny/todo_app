# frozen_string_literal: true

require 'application_system_test_case'

class TodosTest < ApplicationSystemTestCase
  setup do
    @todo = todos(:one)
  end

  test 'visiting the index' do
    visit root_url
    assert_selector 'h1', text: 'Todos'
  end

  test 'creating a Todo' do
    visit root_url
    click_on 'New Todo'

    fill_in 'Title', with: @todo.title
    click_on 'Create Todo'

    assert_text 'Todo was successfully created'
    assert_selector 'h1', text: 'Todos'
  end

  test 'updating a Todo' do
    visit root_url
    click_on 'Edit', match: :first

    fill_in 'Title', with: @todo.title
    click_on 'Update Todo'

    assert_text 'Todo was successfully updated'
    assert_selector 'h1', text: 'Todos'
  end

  test 'destroying a Todo' do
    visit root_url
    page.accept_confirm do
      click_on 'Delete', match: :first
    end

    assert_text 'Todo was successfully destroyed'
  end
end
