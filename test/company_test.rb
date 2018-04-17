require './test/test_helper'
require './lib/time_sheet'
require './lib/employee'
require './lib/project'
require './lib/company'

class CompanyTest < Minitest::Test
    attr_reader :company
  def setup
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

  def test_it_can_add_employees_from_data
    assert @company.employees.empty?
    @company.load_employees('./data/employees.csv')
    refute @company.employees.empty?
  end

  def test_it_can_add_projects_from_data
    assert @company.projects.empty?
    @company.load_projects('./data/projects.csv')
    refute @company.projects.empty?
  end

  def test_it_can_add_time_sheets_from_data
    assert @company.time_sheets.empty?
    @company.load_time_sheets('./data/timesheets.csv')
    refute @company.time_sheets.empty?
  end

  def test_it_sends_error_for_bad_data
    actual_1 = @company.load_employees('./data/bad_employees.csv')
    assert_equal false, actual_1[:success]
    expected_1 = {:success=>false, :error=>"bad data"}
    assert_equal expected_1, actual_1

    actual_2 =  @company.load_projects('./data/bad_projects.csv')
    assert_equal false, actual_2[:success]
    expected_2 = {:success=>false, :error=>"bad data"}
    assert_equal expected_2, actual_2

    actual_3 = @company.load_time_sheets('./data/bad_timesheets.csv')
    assert_equal true, actual_3[:success]
    expected_3 = {:success=>true, :error=>nil}
    assert_equal expected_3, actual_3
  end
end