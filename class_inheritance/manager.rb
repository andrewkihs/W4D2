require_relative "./employee.rb"
class Manager < Employee
    def initialize
        super
        employees = [Employee.new('name1','Manager', 2000, "BossName")]

    end

    def bonus(multiplier)
        emp_sum = 0
        employees.each do |employee|
            emp_sum += employee.salary
        end
        bonus = sum * multiplier
    end
end