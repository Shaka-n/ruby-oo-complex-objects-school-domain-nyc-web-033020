require "pry"

class School
    attr_accessor :roster
    attr_reader :school

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        unless @roster[grade]
            @roster[grade]= []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.map do |key, value|
           sorted[key] = value.sort
        end
        sorted
    end
    
end
