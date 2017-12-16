require 'test_helper'

class ChannelTest < ActiveSupport::TestCase
  def test_presence_of_name
    channel = Channel.create(name: nil)

    assert_not_nil(channel.errors[:name])
  end
end
