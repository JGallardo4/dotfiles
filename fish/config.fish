# Greeting
set -gx fish_greeting \a"<°_><{
"

# Set cat command tab size
function cat
	/bin/cat $argv | expand -t2
end
