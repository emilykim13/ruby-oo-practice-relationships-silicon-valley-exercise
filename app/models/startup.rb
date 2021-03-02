require 'pry'
class Startup
    attr_accessor :name, :founder, :domain
    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(change_name, change_domain)
        (self.name = change_name, self.domain = change_domain)
    end

    def self.domains
        @@all.map {|startup| startup.domain}
    end


    def self.find_by_founder(found)
        @@all.find {|start| start.founder == found}
    end

    def sign_contract (venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end

    def funding_rounds
        FundingRound.all.select {|fr| fr.startup == self}
    end

    def num_funding_rounds()
        self.funding_rounds.size
    end

    # def total_funds    >>>>used this version in venture_capitalist<<<<<
    #     funds_sum = 0
    #     funding_rounds.select {|fr| funds_sum += fr.investment}
    #     funds_sum
    # end

    def total_funds 
        funding_rounds.inject(0){|fund, fr| fund += fr.investment}
    end
        # for how to use .inject :
            # the 0 is going to be the value fund starts as. fr is the name of the object your iterating. Then it runs the code on the right. 
            # Whatever is returned on the code to the right replaces fund. Then it goes on to the next object runs the code on the right then whatever 
            # is returned is put back in to fund. This repeats till all objects you are iterating though are finished.

    def investors
        funding_rounds.map{|fr| fr.venture_capitalist}.uniq
    end

    def big_investors
        investors.select {|investor| VentureCapitalist.tres_commas_club.include?(investor)}
                # returns an empty array if there are no 'big investors'
    end
end
