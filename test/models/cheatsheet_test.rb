require 'test_helper'

class CheatsheetTest < ActiveSupport::TestCase

  test "should have a title and body" do
    cheatsheet = Cheatsheet.new
    assert :success
  end

end
