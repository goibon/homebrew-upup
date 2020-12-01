require "cli/parser"

module Homebrew
  module_function

  def upup_args
    Homebrew::CLI::Parser.new do
      usage_banner <<~EOS
      `upup` [`--cleanup`] [`--quiet`]
      EOS
      switch "-c", "--cleanup",
        description: "Calls brew cleanup after the last step"
      switch "-q", "--quiet",
        description: "Runs quietly with no output unless something goes wrong"
    end
  end

  def callbrew(command, args)
    puts "brew #{command}" unless args.quiet?
    system "brew", command
    abort("brew #{command} failed") unless $CHILD_STATUS.success?
  end

  def upup
    args = upup_args.parse

    commands = %w(update upgrade)
    commands << "cleanup" if args.cleanup?

    commands.each do |command|
      callbrew(command, args)
    end
  end
end
