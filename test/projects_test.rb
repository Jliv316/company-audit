require './test/test_helper'
require './lib/project'

class ProjectTest < Minitest::Test
    attr_reader :project
  def setup
    project_id = '123'
    name = 'Widget Maker'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    @project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')
  end

  def test_instantiation
    assert_instance_of Project, @project
  end

  def test_attributes
   assert_equal Integer, @project.id.class
   assert_equal "Widget Maker", @project.name
   assert_instance_of Date, @project.start_date
   assert_instance_of Date, @project.end_date
  end
end