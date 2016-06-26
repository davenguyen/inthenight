require 'test_helper'

class YodaismTest < SatelliteIntegrationTest
  test 'random quote' do
    # gets us quotes 5, 11, and 8
    srand(1)

    run_command 'yodaism'
    page.has_content? 'Do... or do not. There is no try.'

    run_command 'yodaism'
    page.has_content? 'When nine hundred years old *you* reach, look as good *you* will not, hmm?'

    run_command 'yodaism'
    page.has_content? 'A Jedi uses the Force for knowledge and defense, NEVER for attack.'
  end

  test 'select quote' do
    run_command 'yodaism 5'
    page.has_content? 'Do... or do not. There is no try.'
  end
end
