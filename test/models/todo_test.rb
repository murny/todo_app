# frozen_string_literal: true

require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  def setup
    @todo = todos(:one)
  end

  test 'valid todo' do
    assert @todo.valid?
  end

  test 'invalid without title' do
    @todo.title = nil
    assert_not @todo.valid?
    assert_equal @todo.errors[:title].first, "can't be blank"
  end
end
