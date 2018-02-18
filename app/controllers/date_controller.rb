class DateController < ApplicationController
    def index
        @texts = Text.where("datetime > ? and datetime < ?", DateTime.new(2016, 11, 5), DateTime.new(2016, 11, 6)).order(datetime: :asc)
    end
end
