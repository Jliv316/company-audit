require 'date'
class Employee
    attr_reader :id,
                :name,
                :role,
                :start_date,
                :end_date
    def initialize(employee_id, name, role, start_date, end_date)
        @id = employee_id.to_i
        @name = name
        @role = role
        @start_date = format_date(start_date)
        @end_date = format_date(end_date)
    end

    def format_date(date)
        da = date.split('-')
        formatted_date = Date.new(da[0].to_i, da[1].to_i, da[2].to_i)
    end
end
