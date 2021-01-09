value = input('Type Something: ') 
 
if value.isupper():      print('It is all uppercase.') 
 
if value.islower():     print('It is all lowercase.') 
 
if value.isalpha():     print('It is all letters.') 
 
if value.isdigit():      print('It is all numbers.')

if value.isspace():      print('It is all whitespace.') 
 
if value.startswith('s'):      print('It starts with an \'s\'.')

if value.endswith('t'):     print('It ends with an \'t\'.') 
 
if value.count('e') >= 2:      print('It has at least 2 of the letter \'e\'.') 
 
print('It is', len(value), 'character(s) long.') 
