require_relative "../api"

desc "Get a quiz, as long as you have verified all earlier quizzes"
task :get_quiz do
  if (ARGV.length == 1)
    puts "Usage: get_quiz [github_username] [chapter_number] [quiz_number]\n" \
    "Example: get_quiz oleg 4 1\n"
    exit
  end

  puts Api.get_quiz(StudentQuiz.new(github_username: ARGV[1],
                                    chapter_number: ARGV[2],
                                    quiz_number: ARGV[3]))
  exit
end