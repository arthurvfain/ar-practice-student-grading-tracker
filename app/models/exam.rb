class Exam < ActiveRecord::Base
    has_many :student_exams
    has_many :students, through: :student_exams

    def insert_feedback(student, grade, comment)
        # add_column :student, :grande => integer
        StudentExam.create(exam: self, student_id: student.id, grade: grade, teacher_comment: comment)
    end

    def class_average
    end

    def self.used_exams
        
    end

    def self.lowest_average
        
    end

    def self.drop_lowest_average
        
    end
end


