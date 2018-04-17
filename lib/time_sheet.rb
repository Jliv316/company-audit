require 'date'
class TimeSheet
    attr_reader :employee_id,
                :project_id,
                :date,
                :minutes
    def initialize(employee_id, project_id, date, minutes)
        @employee_id = employee_id
        @project_id = project_id
        @date = format_date(date)
        @minutes = minutes.to_i
    end

    def format_date(date)
        da = date.split('-')
        formatted_date = Date.new(da[0].to_i, da[1].to_i, da[2].to_i)
    end
end