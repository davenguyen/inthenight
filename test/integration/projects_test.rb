require 'test_helper'

class ProjectsTest < SatelliteIntegrationTest
  test "projects" do
    run_command 'projects'
    page.has_content? 'Lunar shell'
    page.has_content? 'IndieBeach'
  end
end
