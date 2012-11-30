#
# rpsls.rb
# Class Rpsls
#

class Rpsls
  
  attr_reader :human_choice, :computer_choice, :valid_choices, :beats, :winner, :result
  
  def initialize()
    @valid_choices = [:rock, :paper, :scissors, :lizard, :spock]
    @beats = {:rock => [:scissors, :lizard], :paper => [:rock,:spock], :scissors => [:paper, :lizard], :lizard => [:paper, :spock,], :spock => [:rock, :scissors]}
  end
  
  def get_human(human_choice)
    human_choice = human_choice.to_sym    
    if @valid_choices.include?(human_choice)
      @human_choice = human_choice
    end
  end
  
  def get_computer()
    @computer_choice = @valid_choices.sample
  end
  
  def play(human_choice)
    
    get_human(human_choice)
    get_computer()

    if @human_choice == nil
      @result = "Your choice is not valid. Select one of them: #{@valid_choices.join(', ')}."
    else
    
      if @beats[@human_choice].include?(@computer_choice)
        @winner = "human"
        @result = "Human win. #{@human_choice} beats #{@computer_choice}."
      elsif @beats[@computer_choice].include?(@human_choice)
        @winner = "computer"
        @result = "Computer win. #{@computer_choice} beats #{@human_choice}."
      else
        @winner = "nobody"
        @result = "Nobody win. It's a tie."
      end
    end
  
    @result 
 end
end 
