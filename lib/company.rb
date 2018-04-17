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
    end

end