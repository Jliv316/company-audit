require 'date'
class Employee
    attr_reader :id,
                :name,
                :role,
                :start_date,
                :end_date
    def initialize(data)
        @id = data[:id].to_i
        @name = data[:name]
        @role = data[:role]
        @start_date = format_date(data[:start_date])
        @end_date = format_date(data[:end_date])
    end

    def format_date(date)
        da = date.split('-')
        formatted_date = Date.new(da[0].to_i, da[1].to_i, da[2].to_i)
    end
end
