#User inputs question
#Computer outputs random answer
#User inputs "QUIT"
#Computer outputs a goodbye message and exits
#Bonus Objectives:
#ability to add more answers:
#ability to reset answers back to original bank (hint: think arr.clone)
#ability to have eight ball print all answers

  @answers_options = [
  'No way',
  'Keep dreaming',
  'indubitably',
  'Fo sure',
  'perhaps',
  'umm, are Tacos delicious?']

  @user_answers = []
  @combined_ans = []
  @history = []


def menu_options
  puts "\nWelcome to Magic Eight\n"
  puts "1) Ask a question"
  puts "2) Add your own answer"
  puts "3) History"
  puts "4) Reset/Delete your entries"
  puts "5) Exit"
end

def add
  add_answer = gets.strip
  @answers_options.push(add_answer)
end

def option_1
  puts "What would you like to know?"
  user_response = gets.strip.downcase
  combine = @answers_options.concat(@user_answers)
  combined = combine.sample
  final = ("#{user_response} = #{combined}")
  @history << final
  puts
  puts combined
end

def option_2
  puts "What would you like to add?"
  add
  puts "Very clever!"
end

def option_4
  @user_answers.clear 
  puts "Your answer entries have been deleted."
end

def option_3
  puts "--History--"
  @history.each do |option_3|
  puts option_3
 end
end

def answer_bank
  @answers_options2 = @answers_options.clone
  @user_answers2 = @user_answers.clone
  @combined_ans << @answers_options2.concant(@user_answers2)
  puts "--Answer Bank--"
  @combined_ans.flatten.each do |bank|
    puts bank
  end

end

def menu_answer
  menu_options
  option = gets.strip.to_i
 case option
  when 1
    option_1
  when 2
    option_2
  when 3
    option_3
  when 4
    option_4
  when 5
    die
 end
end

def die
  puts
  puts "Goodbye and good luck!"
  exit
end


while true
menu_answer
end
