class StudentExam < ActiveRecord::Base
    belongs_to :student
    belongs_to :exam

    def print_details
        puts "#{student.name} took the #{exam.subject} exam receiving a score of #{self.grade}"
    end

    def questions_correct_ratio
        puts "#{(grade*0.01*exam.total_questions).to_i} questions correct out of #{exam.total_questions} questions total"
    end
end