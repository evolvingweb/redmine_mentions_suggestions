require 'redmine'

# Tell Zeitwerk to ignore this plugin's lib directory
# R7: no loader.ignore / manual require — RedmineMentionsSuggestions::Hooks
# (lib/redmine_mentions_suggestions/hooks.rb) self-registers on Zeitwerk eager-load.
# refs #108530.
Redmine::Plugin.register :redmine_mentions_suggestions do
  name 'Redmine Mentions Suggestions plugin'
  author 'Evolving Web'
  description 'Suggest assignee based on note text.'
  version '7.0.0'
  requires_redmine version_or_higher: '7.0.0'
  url 'https://github.com/evolvingweb/redmine_mentions_suggestions'
  author_url 'https://evolvingweb.ca'
end
