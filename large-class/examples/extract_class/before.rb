class Evaluations
  def initialize(assiduity, test, behavior)
    @assiduity, @test, @behavior = assiduity, test, behavior
  end

  def result
    @assiduity + @test + @behavior / 3
  end

  def set_grades(grade)
    @assiduity, @test, @behavior = grade, grade, grade
  end

end

class Student
  def set_all_grades_to grade
    %w(first second third).each do |which_term|
      %w(assiduity test behavior).each do |criteria|
        send "#{which_term}_term_#{criteria}=".to_sym, grade
      end
    end
  end
end
