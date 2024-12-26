module Homebrew
  module Cmd
    class Upup < AbstractCommand
      cmd_args do
        switch "-c", "--cleanup",
          description: "Calls brew cleanup after the last step"
        switch "-q", "--quiet",
          description: "Runs quietly with no output unless something goes wrong"
      end

      def callbrew(command, args)
        puts "brew #{command}" unless args.quiet?
        system "brew", command
        abort("brew #{command} failed") unless $CHILD_STATUS.success?
      end

      def run
        commands = %w(update upgrade)
        commands << "cleanup" if args.cleanup?

        commands.each do |command|
          callbrew(command, args)
        end
      end
    end
  end
end
