class StudentsController < ApplicationController
    def index
        students_all = Student.all
        render json: students_all
    end
    
    def grades
        student_grades = Student.all.order(grade: :desc)
        render json: student_grades
    end

    #def grade_hi
        #hi_student_grades =Student.all.order(grade: :desc limit 1)
        #render json: hi_student_grades
    #end
end
