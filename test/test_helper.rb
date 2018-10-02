require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'

# The test helper is a super common idiom, mostly so you don't have to require everything in every test. 
# More importantly, it can give you access to helper methods you make that you need in your tests.
# If you want to get even more fancy, figure out a way to have ruby require all files from the lib folder, so you don't 
# have to add them into the test helper every time you make a new class.