class PotatoController < ApplicationController
  include ActionController::Live

  def potatoer
    response.headers['Content-Type'] = 'text/event-stream'
    sse = SSE.new(response.stream, retry: 300, event: "new-order")

    loop do
      sse.write(Person.all.to_json)
      sleep 5
    end

  ensure
    sse.close
  end

  def hue
  end
end
