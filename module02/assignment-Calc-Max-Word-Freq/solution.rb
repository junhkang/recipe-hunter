#require_relative "module2_assignment"

# This script provides a sample execution of the Solution class
# that is consistent with what the rspec evaluation will perform.
# You may use it to sanity check your actual solution along side
# the rspec tests.
#solution = Solution.new
#kkkkkk = LineAnalyzer.new(
#{}"This is a really  
#{}Will it work maybe it will work do you think it will it will",1)
	#puts kkkkkk
#puts kkkkkk.highest_wf_count
#puts kkkkkk.highest_wf_words
#puts solution.calculate_line_with_highest_frequency() 
#puts solution.analyze_file
#expect errors until you implement these methods
#solution.calculate_line_with_highest_frequency()
#solution.calculate_line_with_highest_frequency
#solution.print_highest_word_frequency_across_lines
require_relative "module2_assignment"

# This script provides a sample execution of the Solution class
# that is consistent with what the rspec evaluation will perform.
# You may use it to sanity check your actual solution along side
# the rspec tests.

solution = Solution.new
#expect errors until you implement these methods
solution.analyze_file
solution.calculate_line_with_highest_frequency
solution.print_highest_word_frequency_across_lines
