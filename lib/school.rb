# code here!
class School

    
    def initialize(name)
        @school_name = name
        @roster = {}
    end

    attr_accessor :school_name
    attr_accessor :roster

    def add_student(student_name, grade)
        #if grade already exists, just add the student name to that keys' grades array
        if @roster[grade] == nil 
            @roster[grade] = []
            @roster[grade] << student_name
        else 
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        # roster = {
        #     9: ["AC Slater", "Zach Morris"],
        #     10: ["Aardvark", "Kelly Kapowski"]
        # }
        # @roster.sort
        grades = @roster.keys
        sorted_hash = {}
        grades.each do |grade|
            # sorted_hash[grade] = []
            sorted_hash[grade] = @roster[grade].sort
        end
        sorted_hash
    end
end
#    @roster[grade] ||= []
#         @roster[grade] << student_name