# spellchecker

This program checks a users spelling,

receiving a string as input the programs will check it is spelt correctly and highlight words which are not.

The program does not correct a users spelling, rather returns it highlighted

note:

if the input is anything other than a string, an error will be raised.

Original capitalization must be adhered to.

input | output

'one' | 'one'
tww | ~tww~
'one tww' | 'one ~tww~'
'Three' | 'Three'
'Three Foor' | 'Three ~Foor~' 