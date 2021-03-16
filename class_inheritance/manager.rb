require_relative "./employee.rb"
class Manager < Employee
    attr_accessor :employees
    def initialize(name, title, salary, boss = nil)
        super
        @employees = []
    end

    

    def bonus(multiplier)
        emp_sum = 0
        employees.each do |employee|
            emp_sum += employee.salary
        end
        bonus = sum * multiplier
    end
end