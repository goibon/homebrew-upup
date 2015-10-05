require "english"

if ARGV.flag? "--help"
  puts <<-EOS.undent
    Usage:
      brew upup [-c] [-q]

    -c, --cleanup: calls brew cleanup after the last step
    -q, --quiet: runs quietly with no output unless something goes wrong
  EOS
  exit
end

commands = %w(update upgrade)
commands << "cleanup" if ARGV.flag? "--cleanup"

def callbrew(command)
  puts "brew #{command}" unless ARGV.flag? "--quiet"
  system "brew", command
  abort("brew #{command} failed") unless $CHILD_STATUS.success?
end

commands.each do |command|
  callbrew(command)
end
