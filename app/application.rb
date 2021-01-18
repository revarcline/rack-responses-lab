class Application
  def call(_env)
    resp = Rack::Response.new
    t = Time.now.hour

    if t < 12
      resp.write 'Good Morning!'
    else
      resp.write 'Good afternoon!'
    end

    resp.finish
  end
end
