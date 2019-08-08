require "pry"

class Application
	def call(env)
		# binding.pry
		resp = Rack::Response.new
		time = Time.now
		case time.hour
		when 0..4
			resp.write "Shouldn't you be asleep right now?!"
		when 5..11
			resp.write "Good Morning!  How about another cup of coffee?"
		when 12..14
			resp.write "Good Afternoon! So, what's for lunch?"
		when 15..17
			resp.write "Seems like a good time for another cup of coffe."
		when 18..20
			resp.write "Dinner time!  Come and get it!"
		when 21..23
			resp.write "Get your work done and get to bed."
		end

		resp.finish
	end
end