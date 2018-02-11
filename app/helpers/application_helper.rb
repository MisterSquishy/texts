require 'csv'
require "activerecord-import/base"
ActiveRecord::Import.require_adapter('pg')

module ApplicationHelper
    def self.parse
        items = []
        Text.delete_all
        count = CSV.foreach('DefinitiveTexts.csv', headers: true).count
        i = 0
        CSV.foreach('DefinitiveTexts.csv', headers: true, :header_converters => :symbol, :converters => :all) do |row|
            i += 1
            puts "#{(i.fdiv(count) * 100).round(2)}%"
            rowHash = row.to_h
            rowHash.delete(nil) #empty columns are used to keep notes/todos
            if (!rowHash[:datetime].nil?)
                rowHash[:datetime].to_datetime
                items << Text.new(rowHash)
            end
        end
        Text.import(items)
    end
end
