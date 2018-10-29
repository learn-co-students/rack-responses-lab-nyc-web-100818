class Application
  def call(env)
    resp = Rack::Response.new
    now = Time.new

    if now.hour < 12
      resp.write "Good Morning Afternoon!"
    elsif now.hour >= 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
