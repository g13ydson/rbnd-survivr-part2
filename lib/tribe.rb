class Tribe
	attr_accessor :name, :members

	def initialize(options={})
		@name = options[:name]
    	@members = options[:members]
    	puts "Tribe #{@name.green} created."
	end

	def to_s
    	@name
  	end

	def tribal_council(options={})
    	@immune = options[:immune]
    	not_immune = @members.reject { |member| member == @immune}
    	deleted_member = not_immune.sample
    	@members.delete deleted_member
    	return deleted_member
  	end

end