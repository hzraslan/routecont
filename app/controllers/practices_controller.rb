class PracticesController < ApplicationController
  @@counter = 0
  def index
    render text: "Hello CodingDojo!"
  end

  def new
    @@counter +=1
    render text:"You have visited this page #{@@counter} times"
  end
  def reset
    @@counter = -1
    redirect_to "/times"
  end
  def saying
   render text: 'What do you want me to say???'
  end
  def hello
    render text: "Saying hello"
  end 
  def name
    redirect_to "/say/hello/joe"
  end
  def joe
    render text: "Saying Hello Joe"
  end
end
