class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..10)
    num_2 = Kernel.rand(1..10)
    num_3 = Kernel.rand(1..10)

    if num_1==num_2 && num_2==num_3
      resp.write "You Win\n"
    else
      resp.write "You Lose\n"
    end

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"


    # resp.write "Hello, World"
    resp.finish
  end

end
