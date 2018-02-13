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
	def initialize (intentos)
		@intentos=intentos
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
		@preguntas.each do |pregunta|
			
		end
	end
end

juego = Game.new(4)
