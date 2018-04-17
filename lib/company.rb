require 'pry'
require './lib/time_sheet'
require './lib/employee'
require './lib/project'
require './lib/loader'

class Company
    attr_reader :projects,
                :employees,
                :time_sheets
    def initialize
        @projects = []
        @employees = []
        @time_sheets = []
    end

    def load_employees(file_name)
        contents = Loader.load(file_name)
        @employees = contents.map do |row|
            Employee.new.from_data(row)
        end
    end

    def load_employees(file_name)
        contents = Loader.load(file_name)
        @employees = contents.map do |row|
            Employee.new.from_data(row)
        end
    end

    def load_projects(file_name)
        contents = Loader.load(file_name)
        @projects = contents.map do |row|
            Project.new.from_data(row)
        end
    end

    def load_time_sheets(file_name)
        contents = Loader.load(file_name)
        @time_sheets = contents.map do |row|
            TimeSheet.new.from_data(row)
        end
    end

end