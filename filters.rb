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
    # Your code Here
  end
  
  # More methods will go below
