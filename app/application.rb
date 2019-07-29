class Application
  
  def call(env)
    resp = Rack::Response.new 
    time = Time.now
    
    if time.hour.between?(7, 11)
      resp.write "Good Morning!\n"
    else time.hour.between?(12, 7)
      resp.write "Good Afternoon!\n"
    end
      resp.finish
  end
  
end