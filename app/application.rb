class Application

  def call(env)
    resp = Rack::Response.new

    time1 = Time.new(2015,11,27,9,30)
    time2 = Time.new(2015,11,27,14,30)

    time3 = Time.new(2015,11,27,12,00)

      if
        time2 > time3
        resp.write "Good Afternoon!"
      end
      
      if
        time1 < time3
        resp.write "Good Morning"
      end

      resp.finish
    end

end
