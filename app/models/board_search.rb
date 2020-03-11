class BoardSearch
  attr_reader :date_from, :date_to

  def initialize(params)
    # the below code indicates that we're going to be adding items into the params
    params ||= {}
    # grabbing the params from date_from, the 7.days.ago is a Ruby method, taking the date 7 days ago from today's date
    @date_from = parsed_date(params[:date_from], 2.days.ago.to_date.to_s)
    # grabbing the params from date_to, takes in the ruby class Date, today means automatically taking in today's class
    @date_to = parsed_date(params[:date_to], Date.today.to_s)
  end

# scope will tell us where exactly the ranges will be
  def scope
    # it looks up Board in database, searches for all the records that are between date_from and date_to, where is Active Record
    Board.where('created_at BETWEEN ? AND ?', @date_from, @date_to)
  end

  private

# parsing in 2 arguments, parsing in a string coz that is what we getting from the search box, the default is for if it doesn't work
  def parsed_date(date_string, default)
    # parse is Ruby built in function, it'll take the string and turn it into a date format
    Date.parse(date_string)
    # if this did not work, it'll be rescued with a more specific error message
  rescue ArgumentError, TypeError
    default
  end
end