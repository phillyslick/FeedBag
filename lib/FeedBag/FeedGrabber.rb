require "rss"
require "open-uri"

class FeedGrabber
  attr_reader :atom
  
  def initialize(base_url)
    @atom ||= RSS::Parser.parse open(base_url)
  end
  
  def entries
    @atom.entries
  end
  
  def parse_entries(l_entries = entries)
    parsed_entries = l_entries.each_with_object([]) do |entry, memo|
      tempHash = {}
      FeedBag::Terms::ATOM_FIELDS.each_with_index do |field, index|
        if entry.send(field).respond_to?(:content)
          tempHash[FeedBag::Terms::DATABASE_FIELDS[index]] = entry.send(field).content
        else
          tempHash[FeedBag::Terms::DATABASE_FIELDS[index]] = entry.send(field)
        end
      end
      memo << tempHash
    end
    parsed_entries
  end
end