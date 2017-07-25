# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".squeeze
# => “zoom”

"enhance".center(15)
#Also can use "enhance".rjust(11), save new string to variable and run .ljust(11) on the new string or variable
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
#=> "the usual suspects"

" suspects".gsub(/[ ]/, 'the usual ')
# Also can use " suspects".insert(0, 'the usual')
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1..38)
# Also can use "The mystery of the missing first letter".sub(/[T]/, '')
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".each_codepoint.map {|c| print c, ' ' }
# Also, "z".codepoints and "z".bytes return => 122 122
# => 122
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the unicode codepoint for z

"How many times does the letter 'a' appear in this string?".count("a")
# => 4