class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour <  12 # have to do .hour to get the hour integer 15 versus 15:24:47
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end # end of Application class
