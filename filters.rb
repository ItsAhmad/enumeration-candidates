# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
   candidates.each do |id| 
    puts "{candidate}{id}"
   else 
    nil 
  end
  
  def experienced?(candidate)
    candidatesExp = @candidates.select { |candidate| candidate[:years_of_experience] >= 2 }
    candidatesExp.each do |candidate| 
        puts "Canadidate ID: #{candidate[:id]} has #{candidate[:years_of_experience]} years of experience" 
  end
  
  def qualified_candidates(candidates)
    candidates.select do |candidate|
      candidate[:years_of_experience] >= 2 &&
      candidate[:github_points] >= 100 && 
      (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
       candidate[:date_applied] >= 15.days.ago.to_date &&
       candidate[:age] > 17
    end
  end 
  # More methods will go below
def ordered_by_qualifications(candidates) 

end 
