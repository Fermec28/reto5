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
