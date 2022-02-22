class StudentsController < ApplicationController
    def index 
        students = Student.all 
        render json: students 
    end

    def grades 
        #setting up the list of students by grade in descending order. 
        grades = Student.order(grade: :desc)
        render json: grades 
    end

    def highest_grade
        smartest = Student.order(grade: :desc).first
        render json: smartest
    end
end
