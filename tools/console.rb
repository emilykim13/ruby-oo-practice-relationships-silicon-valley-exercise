require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#venturecapitalist
v1 = VentureCapitalist.new("Tyler", 250000)
v2 = VentureCapitalist.new("Andy", 50000000000)
v3 = VentureCapitalist.new("Jeff", 75000000000)
# startup
s1 = Startup.new("Alex's Rave Co", "Alex Lexi", "Rave or die")
s2 = Startup.new("Feet Cleaners", "Bob Feet", "Clean ur feet")
s3 = Startup.new("Jeff From IT", "Jeef Beef", "Hi this is IT")
#funding_round
f1 = FundingRound.new(s1, v1, "Type 1", 50000)
f2 = FundingRound.new(s2, v1, "Type 1", 50000)
f3 = FundingRound.new(s2, v2, "Type 3", 15000000)
f4 = FundingRound.new(s1, v1, "Type 2", 100000)
f5 = FundingRound.new(s3, v2, "Type 2", 550000)
f6 = FundingRound.new(s3, v3, "Type 3", 100000000)



#completed code
VentureCapitalist.all
v1.name
v1.total_worth
v3.offer_contract("amy starbucks order", "type 13", 13)
v3.funding_rounds
v1.biggest_investment
v2.portfolio
v2.invested("Clean ur feet") # review this

Startup.all
s1.founder
s1.domain
s1.name
s1.pivot("Alix's Rave Co", "Rave and die")
Startup.domains
Startup.find_by_founder("Jeef Beef")
s1.sign_contract("Tyler", "Type 1", 10000)
s1.funding_rounds # made this to make life easier
s1.num_funding_rounds
s1.total_funds
s1.investors
s2.big_investors

VentureCapitalist.tres_commas_club # returns whoever VC have more than 1000000000
f1.investment
f1.venture_capitalist
f1.startup
f1.type

binding.pry
0 #leave this here to ensure binding.pry isn't the last line