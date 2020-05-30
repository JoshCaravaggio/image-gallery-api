class Image < ApplicationRecord
    belongs_to :gallery

    def to_s
        puts "Description: #{description}, Source URL: #{source_url}, Metadata: #{metadata}, Index: #{index}" 
    end

end

