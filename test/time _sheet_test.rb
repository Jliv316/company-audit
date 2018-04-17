require './test/test_helper'
require './lib/time_sheet'
require './lib/employee'
require './lib/project'

class TimeSheetTest < Minitest::Test

  def setup
    employee_id = Employee.new()
    name = 'Sally Jackson'
    role = 'Engineer'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    @employee = Employee.new(employee_id, name, role, start_date, end_date)
  end

  def test_instantiation
    assert_instance_of TimeSheet, @time_sheet
  end

  def test_attributes
    assert_equal Integer, @employee.id.class
    assert_equal "Sally Jackson", @employee.name
    assert_equal "Engineer", @employee.role
    assert_instance_of Date, @employee.start_date
    assert_instance_of Date, @employee.end_date
    
  end
end