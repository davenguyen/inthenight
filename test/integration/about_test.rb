require 'test_helper'

class AboutTest < SatelliteIntegrationTest
  test "about" do
    run_command 'about'
    page.has_content? 'I am Dave Nguyen'
  end
end
