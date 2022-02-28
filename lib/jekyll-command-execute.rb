module Jekyll

  class CommandExecute < Liquid::Tag

    def initialize(tag_name, command, tokens)
      super
      @command = command.strip
    end

    def render(context)
      `#{@command}`
    end

  end
end

Liquid::Template.register_tag('command_execute', Jekyll::CommandExecute)
