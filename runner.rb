require_relative 'orange'
require_relative 'orange_tree'


tree = OrangeTree.new

tree.pass_growing_season until tree.has_oranges?


# Report yearly harvest information for the lifetime of the tree.
until tree.dead?
  harvested_oranges = []

  while tree.has_oranges?
    basket << tree.pick_an_orange!
  end

  avg_diameter = # Need to calculate the average diameter for this harvest.

  puts <<-HARVEST_REPORT.gsub(/^ {4}/, '')
    YEAR #{tree.age} REPORT
    -----------------------
    Height: #{tree.height} feet.
    Harvest: #{harvested_oranges.size} oranges with an average diameter of #{avg_diameter} inches.


  HARVEST_REPORT

  # Pass another season
  tree.pass_growing_season
end

puts "Alas, the tree, she is dead!"
