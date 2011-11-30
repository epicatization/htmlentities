# encoding: UTF-8
require File.expand_path("../common", __FILE__)

class HTMLEntities::InteroperabilityTest < Test::Unit::TestCase

  def test_should_encode_active_support_safe_buffer
    require 'active_support'
    string = "<p>This is a test</p>"
    buffer = ActiveSupport::SafeBuffer.new(string)
    coder = HTMLEntities.new
    assert_equal coder.encode(string, :named), coder.encode(buffer, :named)
  end
end
