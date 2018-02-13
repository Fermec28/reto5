class Pregunta
	attr_reader :question, :answer

	def initialize (question, answer)
		@question= question
		@answer= answer		
	end

	def iscorrect(answer)			
		self.answer == answer ? true : false        
	end	
end

class Game
	def initialize
		@preguntas= readerFile()		
		start()
	end

	def readerFile
		preguntas =[]
		File.open('Preguntas.csv', 'r') do |f1|
  			while line = f1.gets
  				preguntas <<Pregunta.new(line.split(";")[0],line.split(";")[1])   			
  			end  
		end
		preguntas  
	end

	def start
		puts "Hola, Empezara el Juego solo debes contestar adecuadamente..."

		@preguntas.each do |pregunta|
			loop do
				puts "Definicion: "
				puts pregunta.question
				break if pregunta.iscorrect(gets.chomp+"\n")
			end		
		end

		puts "Game Over"
	end
end

juego = Game.new
