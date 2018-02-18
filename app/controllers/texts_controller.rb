class TextsController < ApplicationController
    def index
        @texts = Text.all.limit('20').order(datetime: :asc) #todo no
    end

    def show
        @text = Text.find(params[:id])
    end
end
