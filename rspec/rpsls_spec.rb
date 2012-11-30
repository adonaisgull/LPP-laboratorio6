
require "rspec"
require "rpsls"

describe Rpsls do
  
  before :each do
    @juego = Rpsls.new
  end
  
  #test 1
  it "Debe existir eleccion de humano" do
    @juego.respond_to?("human_choice").should == true
  end
  
  #test 2
  it "Debe existir eleccion de ordenador" do
    @juego.respond_to?("computer_choice").should == true
  end
  
  #test 3
  it "Debe existir una lista de jugadas validas" do
    @juego.respond_to?("valid_choices").should == true    
  end
  
  #test 4
  it "Debe existir una lista de jugadas posibles y quien gana" do
    @juego.respond_to?("beats").should == true && @juego.respond_to?("winner").should == true
  end
  
  #test 5
  it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida (Se pasa opcion valida)" do 
    @juego.get_human("spock");
    @juego.valid_choices.include?(@juego.human_choice).should == true
  end
  
  #test 6
  it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida (Se pasa opcion no valida)" do 
    @juego.get_human("invalid_choice");
    @juego.valid_choices.include?(@juego.human_choice).should == false
  end
  
  #test 6
  it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
    @juego.get_computer()
    @juego.valid_choices.include?(@juego.computer_choice).should == true
  end
  
  #test 7
  #it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
  #end
  
  #test 8
  it "Debe existir un resultado para un juego, desde el punto de vista de lamaquina" do
    @juego.respond_to?("result").should == true
  end
  
  #test 9
  it "Se debe invocar al metodo jugar() para determinar el ganador de la tirada" do
    
    @juego.play("spock")

    winners = ["human", "computer", "nobody"]
    winners.include?(@juego.winner).should == true
  end
  it "Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades" do
    computer_choices = []
    30.times do
      @juego.play("spock")
      computer_choices << @juego.computer_choice
    end
   
    computer_choices.uniq.size.should == @juego.valid_choices.size
  end
 
  it "Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma" do
    computer_choices = []
    human_choices = []
    same  = true

    30.times do
      @juego.play(@juego.valid_choices.sample.to_s)	
      same = false if @juego.human_choice != @juego.computer_choice
    end
    same.should == false
  end
end








