require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  test "factory girl" do
    member = FactoryGirl.create(:member)
    p member.full_name
    assert_equal "Yamada Taro", member.full_name
  end
end