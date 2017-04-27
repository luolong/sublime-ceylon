// SYNTAX TEST "Packages/Ceylon/Ceylon.sublime-syntax"

// Plain comment
// <- source.ceylon comment.line.double-slash punctuation.definition.comment
// ^^^^^^^^^^^^^    comment.line.double-slash

/**/
// <- comment.block punctuation.definition.comment
//^^  comment.block punctuation.definition.comment


/* multi line comment
// ^^^^^^^^^^^^^^^^^^ comment.block

   Second line of comment */
//^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block
//                        ^^ punctuation.definition.comment

"String literals
// <- string.quoted.double.ceylon punctuation.definition.string.begin.ceylon
//             ^ string.quoted.double.ceylon

 A character string literal is a sequence of Unicode characters, inside double quotes.

 A string literal may contain escape sequences. An escape sequence is replaced by its 
 corresponding Unicode character during lexical analysis.

 The single-character escape sequences have their traditional interpretations as Unicode characters:

 - \b means BACKSPACE,
// ^^                 constant.character.escape.ceylon

 - \t means CHARACTER TABULATION,
// ^^                 constant.character.escape.ceylon

 - \n means LINE FEED (LF),
// ^^                 constant.character.escape.ceylon

 - \f means FORM FEED (FF),
// ^^                 constant.character.escape.ceylon

 - \r means CARRIAGE RETURN (CR),
// ^^                 constant.character.escape.ceylon

 - \e means ESCAPE,
// ^^                 constant.character.escape.ceylon

 - \\, \`, \', and \" mean REVERSE SOLIDUS, GRAVE ACCENT, APOSTROPHE, and QUOTATION MARK, respectively, and, finally
// ^^                 constant.character.escape.ceylon
//     ^^             constant.character.escape.ceylon
//         ^^         constant.character.escape.ceylon
//                 ^^ constant.character.escape.ceylon

 - \0 means NULL.
// ^^                 constant.character.escape.ceylon



 A Unicode codepoint escape is a two-, four-, or six-digit hexadecimal literal representing an integer in the range 0 to 10FFFF,
   \{#212B}
// ^^^^^^^^                      constant.character.escape.ceylon

 or a Unicode character name, surrounded by braces, and means the Unicode character with the specified codepoint or character name.
   \{ALCHEMICAL SYMBOL FOR GOLD}
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape.ceylon



 A line-terminating character sequence \
//                                     ^ constant.character.escape.ceylon
 may be escaped with a backslash, in which case the \
 escaped line termination is removed from the string \
 literal during lexical analysis.

 A sequence of two backticks is used to delimit an interpolated expression embedded in a string template.

 Interpolate `` "this" ``
//           ^^           punctuation.definition.string.interpolated.begin
//           ^^^^^^^^^^^^ string.quoted.double string.interpolated.backtick
//             ^^^^^^^^   source.ceylon.embedded.expression
//              ^         punctuation.definition.string.begin
//              ^^^^^^    string.quoted.double.ceylon
//                   ^    punctuation.definition.string.end
//                     ^^ punctuation.definition.string.interpolated.end.ceylon
 "
 // <- punctuation.definition.string.end.ceylon


  """This program prints "hello world" to the console.
//^^^ punctuation.definition.string.begin.ceylon
     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.triple
     
     A verbatim string is a character sequence delimited by a sequence of three double quotes. 
     Verbatim strings do not contain escape sequences or interpolated expressions, so every character 
     occurring inside the verbatim string is interpreted literally.

        \t\n\f\r\\\"\'\0,;:
//      ^^ string.quoted.triple.ceylon
   \{#212B}

   \{ALCHEMICAL SYMBOL FOR GOLD}

     """
//   ^^^ punctuation.definition.string.end.ceylon
