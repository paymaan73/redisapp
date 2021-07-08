require_relative '../../lib/populates'
class PersistLetters
  def initialize(number)
    @number = number
  end
  def execute
    PopulateLetters.new(@number).execute do |letter|
      Letter.create(name: letter, description: <<EOF, score: Random.rand(1001))
      This is the description for the letter #{letter}.
EOF
    end
  end
end
