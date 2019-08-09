class Application

    def call(env)
        resp = Rack::Response.new
        
        case
        when Time.now.hour.between?(1,12)
          resp.write "Good Morning!"
        when Time.now.hour.between?(13,24)  
          resp.write "Good Afternoon!"
        end  
  
        resp.finish
    end
  
  end
  