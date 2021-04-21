require_dependency 'user_preference'

module RedmineMentionsSuggestions
  module Patches
    module UserPreferencePatch

      def self.prepended(base)
        base.class_eval do
          if defined? safe_attributes
            safe_attributes :suggest_mentions
          end
        end
      end

      def suggest_mentions
        self[:suggest_mentions]
      end

      def suggest_mentions=(val)
        self[:suggest_mentions] = val
      end

      def suggest_mentions?
        self[:suggest_mentions]
      end

    end
  end
end
