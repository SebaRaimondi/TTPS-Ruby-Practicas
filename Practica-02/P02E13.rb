module GenericFactory
	def create (**args)
		new(**args)
	end
	def initialize (**args)
		raise NotImplementedError
	end
end

class Concreta
	extend GenericFactory
	def hi
        p "Hi!"
    end
    def initialize(*args)
        @var = true
    end
end

# Cambie self.create a create.