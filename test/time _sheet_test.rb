require './test/test_helper'
require './lib/time_sheet'
require './lib/employee'
require './lib/project'

class TimeSheetTest < Minitest::Test
    attr_reader :time_sheet
  def setup
    employee_id = '5'
    name = 'Sally Jackson'
    role = 'Engineer'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    employee = Employee.new(employee_id, name, role, start_date, end_date)

    project_id = '123'
    name = 'Widget Maker'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')

    employee_id = employee.id
    project_id = project.id
    date = '2015-01-01'
    minutes = '120'
    @time_sheet = TimeSheet.new(employee_id, project_id, date, minutes)
  end

  def test_instantiation
    assert_instance_of TimeSheet, @time_sheet
  end

  def test_attributes
    assert_equal Integer, @time_sheet.employee_id.class
    assert_equal Integer, @time_sheet.project_id.class
    assert_equal Date, @time_sheet.date.class
    assert_equal Integer, @time_sheet.minutes.class
  end
end