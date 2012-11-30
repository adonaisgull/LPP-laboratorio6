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
  
  def play()
    
    if @beats[@human_choice].include?(@computer_choice)
      @winner = "human"
    elsif @beats[@computer_choice].include?(@human_choice)
      @winner = "computer"
    else
      @winner = "nobody"
    end
  end

end