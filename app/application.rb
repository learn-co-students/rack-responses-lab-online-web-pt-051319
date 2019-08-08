
class Application
 
  def call(env)
    resp = Rack::Response.new
    
    @@time = []
    
    if Time.last.hour >= 12 
      resp.write "Good Afternoon!"
    elsif Time.last.hour < 12
      resp.write "Good Morning!"
    end
 
    resp.finish
  end
 
end