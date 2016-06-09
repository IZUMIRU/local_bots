# This file was auto-generated by lib/generators/tasks/generate.rb

module Slack
  module Endpoint
    module Groups
      #
      # This method archives a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to archive
      # @see https://api.slack.com/methods/groups.archive
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.archive.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.archive.json
      def groups_archive(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.archive", options)
      end

      #
      # This method closes a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to close.
      # @see https://api.slack.com/methods/groups.close
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.close.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.close.json
      def groups_close(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.close", options)
      end

      #
      # This method creates a private channel.
      #
      # @option options [Object] :name
      #   Name of private channel to create
      # @see https://api.slack.com/methods/groups.create
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.create.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.create.json
      def groups_create(options={})
        throw ArgumentError.new("Required arguments :name missing") if options[:name].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.create", options)
      end

      #
      # This method takes an existing private channel and performs the following steps:
      #
      # @option options [Object] :channel
      #   Private channel to clone and archive.
      # @see https://api.slack.com/methods/groups.createChild
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.createChild.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.createChild.json
      def groups_createChild(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.createChild", options)
      end

      #
      # This method returns a portion of messages/events from the specified private channel.
      # To read the entire history for a private channel, call the method with no latest or
      # oldest arguments, and then continue paging using the instructions below.
      #
      # @option options [Object] :channel
      #   Private channel to fetch history for.
      # @option options [Object] :latest
      #   End of time range of messages to include in results.
      # @option options [Object] :oldest
      #   Start of time range of messages to include in results.
      # @option options [Object] :inclusive
      #   Include messages with latest or oldest timestamp in results.
      # @option options [Object] :count
      #   Number of messages to return, between 1 and 1000.
      # @option options [Object] :unreads
      #   Include unread_count_display in the output?
      # @see https://api.slack.com/methods/groups.history
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.history.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.history.json
      def groups_history(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.history", options)
      end

      #
      # This method returns information about a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to get info on
      # @see https://api.slack.com/methods/groups.info
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.info.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.info.json
      def groups_info(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.info", options)
      end

      #
      # This method is used to invite a user to a private channel. The calling user must be a member of the private channel.
      #
      # @option options [Object] :channel
      #   Private channel to invite user to.
      # @option options [Object] :user
      #   User to invite.
      # @see https://api.slack.com/methods/groups.invite
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.invite.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.invite.json
      def groups_invite(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :user missing") if options[:user].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.invite", options)
      end

      #
      # This method allows a user to remove another member from a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to remove user from.
      # @option options [Object] :user
      #   User to remove from private channel.
      # @see https://api.slack.com/methods/groups.kick
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.kick.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.kick.json
      def groups_kick(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :user missing") if options[:user].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.kick", options)
      end

      #
      # This method is used to leave a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to leave
      # @see https://api.slack.com/methods/groups.leave
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.leave.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.leave.json
      def groups_leave(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.leave", options)
      end

      #
      # This method returns a list of private channels in the team that the caller is in and archived groups that the caller was in.
      # The list of (non-deactivated) members in each private channel is also returned.
      #
      # @option options [Object] :exclude_archived
      #   Don't return archived private channels.
      # @see https://api.slack.com/methods/groups.list
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.list.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.list.json
      def groups_list(options={})
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.list", options)
      end

      #
      # This method moves the read cursor in a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to set reading cursor in.
      # @option options [Object] :ts
      #   Timestamp of the most recently seen message.
      # @see https://api.slack.com/methods/groups.mark
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.mark.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.mark.json
      def groups_mark(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :ts missing") if options[:ts].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.mark", options)
      end

      #
      # This method opens a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to open.
      # @see https://api.slack.com/methods/groups.open
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.open.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.open.json
      def groups_open(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.open", options)
      end

      #
      # This method renames a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to rename
      # @option options [Object] :name
      #   New name for private channel.
      # @see https://api.slack.com/methods/groups.rename
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.rename.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.rename.json
      def groups_rename(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :name missing") if options[:name].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.rename", options)
      end

      #
      # This method is used to change the purpose of a private channel. The calling user must be a member of the private channel.
      #
      # @option options [Object] :channel
      #   Private channel to set the purpose of
      # @option options [Object] :purpose
      #   The new purpose
      # @see https://api.slack.com/methods/groups.setPurpose
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.setPurpose.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.setPurpose.json
      def groups_setPurpose(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :purpose missing") if options[:purpose].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.setPurpose", options)
      end

      #
      # This method is used to change the topic of a private channel. The calling user must be a member of the private channel.
      #
      # @option options [Object] :channel
      #   Private channel to set the topic of
      # @option options [Object] :topic
      #   The new topic
      # @see https://api.slack.com/methods/groups.setTopic
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.setTopic.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.setTopic.json
      def groups_setTopic(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :topic missing") if options[:topic].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.setTopic", options)
      end

      #
      # This method unarchives a private channel.
      #
      # @option options [Object] :channel
      #   Private channel to unarchive
      # @see https://api.slack.com/methods/groups.unarchive
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.unarchive.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/groups.unarchive.json
      def groups_unarchive(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("groups.unarchive", options)
      end

    end
  end
end
