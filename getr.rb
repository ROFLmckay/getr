require 'bundler/setup'
require 'redd'
require 'figaro'
load 'zconnect.rb' #Holds the connection function. Not in version control.

#Run the connection and instantiation of Redd.it from inside zconnect.rb
#zconnect.rb simply performs the .it call normally and returns the result
#It contains api keys and username/pass info that is only xor encrypted,
#and therefore must be kept out of git. This was the simplest solution.
reddit = get_session()

r_all = reddit.subreddit('all')
post = r_all.hot.first
puts post.title