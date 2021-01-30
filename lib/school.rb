# code here!

class School

    attr_reader :roster

    def initialize(name_of_school)
        @name_of_school = name_of_school
        @roster = {}
    end


    def add_student(student, level)
        @roster[level] ||= [] # if there is no level, then a level is created from the "level" value, and the student added. If a level exists, the student student is added the level given in the argument
        @roster[level] << student
    end

    def grade(grade)
        return roster[grade]
    end

    def sort
        @roster.each do |grade, name| # iterate through the roster hash
            name.sort! # with each iteration sort it alphabetically
            puts roster
        end
    end

end