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
        return load_response(@employees)
    end

    def load_projects(file_name)
        contents = Loader.load(file_name)
        @projects = contents.map do |row|
            Project.new.from_data(row)
        end
        return load_response(@projects)
    end

    def load_time_sheets(file_name)
        contents = Loader.load(file_name)
        @time_sheets = contents.map do |row|
            TimeSheet.new.from_data(row)
        end
        return load_response(@time_sheets)
    end

    def load_response(array)
        status = nil
        array.each do |index|
            if index == nil
                status =  {success: false, error: 'bad data'}
            else
                status = {success: true, error: nil}
            end
        end
        return status
    end
end