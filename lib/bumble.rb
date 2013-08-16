require "bumble/version"
require "bumble/factoid"
require "shellwords"

module Bumble
  def self.run
    t = Time.now
    system "bundle #{ARGV.join(" ")}"
    diff = Time.now - t
    puts "Bundle took #{diff} seconds! Something you could have done during that time:"
    puts "  #{Bumble::Factoid.factoid(diff)}"
  end
end
