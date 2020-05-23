class LeaderController < ApplicationController
    def index
        @ranking = ranker()
    end
    private 
    def ranker
        variables = []
        User.all.each do |user|
            count = user.books.where(readBook: true).count
            variables.push([user,count])
        end
        variables.sort_by {|var| var[1]}.reverse
    end
end
