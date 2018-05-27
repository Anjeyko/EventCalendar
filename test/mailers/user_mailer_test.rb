require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "create_event" do
    mail = UserMailer.create_event
    assert_equal "Create event", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
