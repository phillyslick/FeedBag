module FeedBag
  module Feedbaggable
    
    #def newest_entry_cached?(entry)
    #  first_article = Article.newest.first
    #  if first_article && first_article.rss_id == entry.id.content
    #    true
    #  else
    #    false
    #  end
    #end
    #
    #def determine_new_entries(entries)
    #  if Article.any?
    #    newest_entry_index = entries.each_with_index do |entry, index|
    #      break index - 1 if entry.id.content == Article.newest.first.rss_id
    #    end
    #    entries = newest_entry_index >= 0 ? entries[0..newest_entry_index] : []
    #  end
    #  entries
    #end
    #
    #def update_entries(entries)
    #  ActiveRecord::Base.connection_pool.with_connection do
    #    Article.create!(entries)
    #  end
    #end
    #
    
  end
end