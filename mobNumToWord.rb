require 'date'

class Number2Word

  def words_dicts(nums)
    ############
    time_start = Time.now()
    return ["Number not match the crieteria"] if nums.nil? || nums.length != 10 || nums.split('').select{|a|(a.to_i == 0 || a.to_i == 1)}.length > 0
    letters = {"2" => ["a", "b", "c"],"3" => ["d", "e", "f"],"4" => ["g", "h", "i"],"5" => ["j", "k", "l"],"6" => ["m", "n", "o"],"7" => ["p", "q", "r", "s"],"8" => ["t", "u", "v"],"9" => ["w", "x", "y", "z"]}
    #############
    dictionary = {}
    for i in (1..30)
      dictionary[i] = []
    end

    #################
    file_path = "dictionary.txt"
    File.foreach( file_path ) do |word|
      dictionary[word.length] << word.chop.to_s.downcase
    end
    ###################
    keys = nums.chars.map{|num|letters[num]}
    # print keys

    results = {}
    total_number = keys.length - 1 
    # puts total_number

    #################################
    for i in (2..total_number - 2)
      first_array = keys[0..i]
      # print first_array
      # puts first_array
      next if first_array.length < 3
      second_array = keys[i + 1..total_number]
      # print second_array
      next if second_array.length < 3
      first_Set = first_array.shift.product(*first_array).map(&:join) 
      # print first_Set
      next if first_Set.nil?
      second_Set = second_array.shift.product(*second_array).map(&:join)
      # puts second_Set
      next if second_Set.nil?
      results[i] = [(first_Set & dictionary[i+2]), (second_Set & dictionary[total_number - i +1])] 
    end
    ###################################
    #get words in oder
    final_words = []
    results.each do |key, list|
      # print list.first
      # print list.last
      next if list.first.nil? || list.last.nil?
      list.first.product(list.last).each do |combination_word|
        # print combination_word
        final_words << combination_word
      end
    end

    #################################
    # print dictionary[11]
    final_words << (keys.shift.product(*keys).map(&:join) & dictionary[11]).join(", ")
    time_end = Time.now()
    puts '', "Time taken for process: #{(time_end - time_start)*1000} milliseconds"
    final_words
  end


end
6686787825
print Number2Word.new().words_dicts("6686787825")
print Number2Word.new().words_dicts("2282668687")
