Rails.configuration.to_prepare do
  require_dependency 'redmine_mentions_suggestions'
end
Redmine::Plugin.register :redmine_mentions_suggestions do
  name 'Redmine Mentions Suggestions plugin'
  author 'Evolving Web'
  description 'Suggest assignee based on note text.'
  version '0.0.2'
  url 'https://github.com/evolvingweb/redmine_mentions_suggestions'
  author_url 'https://evolvingweb.ca'
end
 
