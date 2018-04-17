require 'date'
class Employee
    attr_reader :id,
                :name,
                :role,
                :start_date,
                :end_date
    
    def initialize(employee_id = '', name = '', role = '', start_date = nil, end_date = nil)
        @id = employee_id.to_i
        @name = name
        @role = role
        @start_date = format_date(start_date)
        @end_date = format_date(end_date)
    end

    def format_date(date)
        return nil if date == nil
        da = date.split('-')
        formatted_date = Date.new(da[0].to_i, da[1].to_i, da[2].to_i)
    end

    def from_data(data)
        @id = data[:id].to_i
        @name = data[:name]
        @role = data[:role]
        @start_date = format_date(data[:start_date])
        @end_date = format_date(data[:end_date])
    end
end
