require './test/test_helper'
require './lib/time_sheet'
require './lib/employee'
require './lib/project'
require './lib/company'

class CompanyTest < Minitest::Test
    attr_reader :company
  def setup
    # employee_id = '5'
    # name = 'Sally Jackson'
    # role = 'Engineer'
    # start_date = '2015-01-01'
    # end_date = '2018-01-01'
    # employee = Employee.new(employee_id, name, role, start_date, end_date)

    # project_id = '123'
    # name = 'Widget Maker'
    # start_date = '2015-01-01'
    # end_date = '2018-01-01'
    # project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')

    # employee_id = employee.id
    # project_id = project.id
    # date = '2015-01-01'
    # minutes = '120'
    # time_sheet = TimeSheet.new(employee_id, project_id, date, minutes)

    @company = Company.new

  end

  def test_instantiation
    assert_instance_of Company, @company
  end

  def test_attributes_start_empty
    assert_equal [], @company.projects
    assert_equal [], @company.employees
    assert_equal [], @company.time_sheets
  end

  def test_it_can_add_employees
    assert @company.employees.empty?
    @company.load_employees('./data/employees.csv')
    refute @company.employees.empty?
  end

end