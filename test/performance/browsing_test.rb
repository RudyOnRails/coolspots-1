require 'test_helper'
require 'rails/performance_test_help'
 
# Profiling results for each test method are written to tmp/performance.
class BrowsingTest < ActionDispatch::PerformanceTest
  self.profile_options = { :runs => 20,
                           :metrics => [:wall_time, :memory] }
  def test_homepage
    get '/'
  end
end
