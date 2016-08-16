

#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
#Implement the following read-only attributes in the LineAnalyzer class. 
  #* highest_wf_count - a number with maximum number of occurrences for a single word (calculated)
  #* highest_wf_words - an array of words with the maximum number of occurrences (calculated)
  #* content          - the string analyzed (provided)
  #* line_number      - the line number analyzed (provided)

  #Add the following methods in the LineAnalyzer class.
  #* initialize() - taking a line of text (content) and a line number
  #* calculate_word_frequency() - calculates result

  #Implement the initialize() method to:
  #* take in a line of text and line number
  #* initialize the content and line_number attributes
  #* call the calculate_word_frequency() method.

  #Implement the calculate_word_frequency() method to:
  #* calculate the maximum number of times a single word appears within
  #  provided content and store that in the highest_wf_count attribute.
  #* identify the words that were used the maximum number of times and
  #  store that in the highest_wf_words attribute.
class LineAnalyzer
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number
  def initialize (content, line_number)
    @line_number = line_number
    @content = content
    @count = 0
    @contentwithline = ""
    content.each_line do |line|
      if @count == @line_number
        @contentwithline = line
      end
      @count = @count+1
    end
    @highest_wf_count = 0
    @highest_wf_words = nil
    calculate_word_frequency(@contentwithline)
    #puts @highest_wf_count
    #puts @highest_wf_words
    #self.calculate_word_frequency = calculate_word_frequency
  end
  def calculate_word_frequency(content)
    @frequencies = Hash.new(0)
    words = content.downcase.split(" ")
#puts words
    words.each do |word|
      @frequencies[word] +=1
    end
      @frequencies.each do |word, value|
        if highest_wf_count < value
          @highest_wf_count = value
          @highest_wf_words = word
        end
      end 
    end
  end



class Solution
  attr_reader :highest_count_across_lines, :highest_count_words_across_lines, :analyzers   
  def initialize ()
    @analyzers = []
    @highest_count_across_lines = 0
    @highest_count_words_across_lines = nil
    analyze_file()
    calculate_line_with_highest_frequency()
  end
  def analyze_file()
      line_number_count = 0
      File.foreach( 'test.txt' ) do |line|
        @LineAnalyzers = LineAnalyzer.new(line, line_number_count)
        @analyzers[line_number_count] = @LineAnalyzers
        #@LineAnalyzers = LineAnalyzer.new(line, line_number_count)
        #@analyzers[line_number_count] = @LineAnalyzers
        line_number_count = line_number_count+1
        #@highest_wf_count
        #puts @highest_wf_words
      end
  end

   # Implement the following methods in the Solution class.
  #* analyze_file() - processes 'test.txt' into an array of LineAnalyzers and stores them in analyzers.
  #* calculate_line_with_highest_frequency() - determines the highest_count_across_lines and 
  #  highest_count_words_across_lines attribute values
  #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in 
  #  highest_count_words_across_lines in the specified format
def calculate_line_with_highest_frequency() 
  analyzers =  self.analyzers
  @len = analyzers.length()-1
  @hhh = []
  @line = 0
  #count = analyzers[0].highest_wf_count
  #puts count
  for i in 0..@len
    highest = analyzers[i].highest_wf_count
    if @highest_count_across_lines < highest
      @highest_count_across_lines = highest
      @line = i+1
      break
    end
  end

  
  for k in 0..@len
    highest = analyzers[k].highest_wf_count
    highestword = analyzers[k].highest_wf_words
    if @highest_count_across_lines == highest
      @hhh.push(highestword)
    end
  end
  @highest_count_words_across_lines = @hhh
  #puts @highest_count_across_lines
  #puts @hhh
  #puts @highest_count_across_lines
  puts @highest_count_across_lines
end



def print_highest_word_frequency_across_lines()
  highestword = @highest_count_words_across_lines
  puts "The following words have the highest word frequency per line: "
  puts highestword.to_s+" (appears in line " + @line.to_s + ")"
  end
end
#The following words have the highest word frequency per line:

#["word1"] (appears in line #)

#["word2", "word3"] (appears in line #)
  #@highe =  @highest_count_across_lines
  #puts @highe
    #if count2 = @highe
     # puts count2
    #end
  
#@highe = @highest_count_across_lines
  #puts @highest_count_accross_lines
 # @highs = analyzers.select {|a| a = @highe}
  #puts @highs
  #for k in 0..@len
  #  count2 = analyzers[k].highest_wf_count
  #  if count2 = @highe
   #   puts analyzers[k]
   # end
  #puts analyzers.highest_wf_count




#def print_highest_word_frequency_across_lines()
#  puts "The following words have the highest word frequency per line "
#  end
#The following words have the highest word frequency per line:

#["word1"] (appears in line #)

#["word2", "word3"] (appears in line #)

  
  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines 
  #* Create an array of LineAnalyzers for each line in the file

  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array
  #  and stores this result in the highest_count_across_lines attribute.
  #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines 
  #  attribute value determined previously and stores them in highest_count_words_across_lines.

  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the values of objects in highest_count_words_across_lines in the specified format


  

 # Implement the following read-only attributes in the Solution class.
  #* analyzers - an array of LineAnalyzer objects for each line in the file
  #* highest_count_across_lines - a number with the maximum value for highest_wf_words attribute in the analyzers array.
  #* highest_count_words_across_lines - a filtered array of LineAnalyzer objects with the highest_wf_words attribute 
  #  equal to the highest_count_across_lines determined previously.


 