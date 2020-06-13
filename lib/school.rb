class School

  attr_reader :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end

  end
  
  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each_value do |student|
      student.sort!
    end
  end

end