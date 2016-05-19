require 'test_helper'

class ContactFormTest < ActionMailer::TestCase
  test "new_contact" do
    mail = ContactForm.new_contact
    assert_equal "New contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
