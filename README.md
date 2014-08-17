# FeedBag
-Early Development-

Parse Atom feeds and store entries in your database.  Find out if you've got the latest feeds, and if not, pull down the new entries and update your db.  

## Thoughts

ArticleGrabber knows nothing about db - only Atom grabbing + parsing
Feedbaggable Module gets mixed in to model getting backed up to.
I imagine using TERMS as defaults and overriding in the model.