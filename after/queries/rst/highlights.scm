; extends

; highlight ``...`` blocks as strings without spell checking
[
  (literal)
] @markup.link @nospell @string

; don't spell-check arguments to directives
[
 (arguments)
 (field_name)
 (interpreted_text)
] @nospell

; Don't spell-check :py:* directives
(interpreted_text
   (role) @function.builtin @nospell
   (#any-of? @function.builtin ":py:class:" ":py:func:" ":py:mod:" ":py:attr:" ":math:")
   "interpreted_text" @nospell @markup.raw)

; Don't spell-check the names of directives
((type) @function.builtin @nospell
   (#any-of? @function.builtin "autoattribute" "autoproperty" "automethod"))
