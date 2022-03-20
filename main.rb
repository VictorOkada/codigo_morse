#EP1 - CÓDIGO MORSE
#UTILIZADA A MÁQUINA DE MOORE NO EXEMPLO
class ADF
  # biblioteca internacional morse code
  $dict = Hash.new

  $dict[" "] = " " 
  $dict["A"] = ".-" 
  $dict["B"] = "-..." 
  $dict["C"] = "-.-." 
  $dict["D"] = "-.." 
  $dict["E"] = "." 
  $dict["F"] = "..-." 
  $dict["G"] = "--." 
  $dict["H"] = "...." 
  $dict["I"] = ".." 
  $dict["J"] = ".---" 
  $dict["K"] = "-.-" 
  $dict["L"] = ".-.." 
  $dict["M"] = "--" 
  $dict["N"] = "-." 
  $dict["O"] = "---" 
  $dict["P"] = ".--." 
  $dict["Q"] = "--.-" 
  $dict["R"] = ".-." 
  $dict["S"] = "..." 
  $dict["T"] = "-" 
  $dict["U"] = "..-" 
  $dict["V"] = "...-" 
  $dict["W"] = ".--" 
  $dict["X"] = "-..-" 
  $dict["Y"] = "-.--" 
  $dict["Z"] = "--.." 
  
  $dict["1"] = ".----" 
  $dict["2"] = "..---" 
  $dict["3"] = "...--" 
  $dict["4"] = "....-" 
  $dict["5"] = "....." 
  $dict["6"] = "-...." 
  $dict["7"] = "--..." 
  $dict["8"] = "---.." 
  $dict["9"] = "----." 
  $dict["0"] = "-----"
  
  $dict[","] = "--..--"
  $dict["."] = ".-.-.-"
  $dict["?"] = "..--.."
  $dict[""""] = ".-..-."
  $dict["."] = "---..."
  $dict["''"] = ".----."
  $dict["-"] = "-....-"
  $dict["/"] = "-..-."
  $dict["("] = "-.--."
  $dict[")"] = "-.--.-"

  #funcao inicial do programa
  def iniciar
    anterior = ""
    q0(anterior)
  end

  #estado inicial
  def q0(anterior)
   
    puts "Insira uma letra:"
    entrada = gets.chomp
    excecoes = ["ç", "á", "à", "é","í", "ì", "ó", "ò", "ú", "ù", "!","@","#","$","%","&","¨","*","_","+","^","ª","º","§"]
    
    for item in excecoes 
      if entrada == item
        puts "Caractere invalido!"
        exit
      end
    end
        
    morse = $dict[ entrada.upcase ].to_s
    print("A entrada é :", entrada)
    print("\nA var anterior é :", anterior)

    if entrada != anterior
      morse = $dict[ entrada.upcase ].to_s
      puts "\nmorse: #{morse}"
      puts "VocÊ foi para o estado q1"
      q1(entrada)

    else
      puts "VocÊ vai para o estado q3"
      q3(entrada)
    end
  end

  def q1(anterior)
    puts "Insira uma letra:"
    entrada = gets.chomp
    morse = ""
    morse = $dict[ entrada.upcase ].to_s
    if entrada != anterior
      morse = $dict[ entrada.upcase ].to_s
      puts "morse: #{morse}"
      puts "VocÊ foi para o estado q2"
      q2(entrada)
    else
      puts "VocÊ continua no estado q1"
      q1(entrada)
    end
  end

  def q2(anterior)
    puts "Insira uma letra:"
    entrada = gets.chomp
    morse = ""
    morse = $dict[ entrada.upcase ].to_s
    if entrada != anterior
      morse = $dict[ entrada.upcase ].to_s
      puts "morse: #{morse}"
      puts "VocÊ foi para o estado q3"
      q3(entrada)
    else
      puts "VocÊ foi para o estado q0"
      q0(entrada)
    end
  end

  def q3(anterior)
    puts "Insira uma letra:"
    entrada = gets.chomp
    morse = ""
    morse = $dict[ entrada.upcase ].to_s
    if entrada != anterior
      morse = $dict[ entrada.upcase ].to_s
      puts "morse: #{morse}"
      puts "VocÊ foi para o estado q4"
      q4(entrada)
    else
      puts "VocÊ continua no estado q3"
      q3(entrada)
    end
  end

  def q4(anterior)
    puts "Insira uma letra:"
    entrada = gets.chomp
    morse = ""
    morse = $dict[ entrada.upcase ].to_s
    if entrada != anterior
      morse = $dict[ entrada.upcase ].to_s
      puts "morse: #{morse}"
      puts "VocÊ foi para o estado q5"
      q5(entrada)
    else
      puts "VocÊ continua no estado q4"
      q4(entrada)
    end
  end
  
  def q5(anterior)
    puts "Insira uma letra:"
    entrada = gets.chomp
    morse = ""
    morse = $dict[ entrada.upcase ].to_s
    if entrada != anterior
      morse = $dict[ entrada.upcase ].to_s
      puts "morse: #{morse}"
      puts "VocÊ foi para o estado q6"
      q6(entrada)
    else
      puts "VocÊ continua no estado q5"
      q5(entrada)
    end
  end

  def q6(anterior)
    puts "Insira uma letra:"
    entrada = gets.chomp
    morse = ""
    morse = $dict[ entrada.upcase ].to_s
    if entrada != anterior
      puts "Aceito!"
    else
      puts "VocÊ continua no estado q6"
      q6(entrada)
    end
  end
end

adf = ADF.new()
adf.iniciar()