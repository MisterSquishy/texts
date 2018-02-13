class TextsController < ApplicationController
    def index
        @texts = Text.all.limit('20') #todo no
    end

    def show
        @text = Text.find(params[:id])
    end
end
