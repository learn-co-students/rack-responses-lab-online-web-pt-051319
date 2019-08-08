class Application
  def call(env)
    resp = Rack::Response.new
    t = Time.now.hour
    if t.between?(0,11)
      resp.write "Good Morning!"
    elsif t.between?(12,24)
      resp.write "Good Afternoon."
    end

    resp.finish
  end
end
