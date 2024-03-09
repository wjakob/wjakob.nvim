; extends

((directive
   name: (type) @_type @nospell
   body: (body
    (arguments) @nospell
    (content) @injection.content))
 (#any-of? @_type "autoclass" "autoattribute" "data" "automethod" "autoproperty" "py:data")
 (#set! injection.language "rst"))

((directive
  name: (type) @_type
  body:
    (body
      (arguments) @_lang
      (content) @injection.content))
  (#eq? @_lang "pycon")
  (#eq? @_type "code-block")
  (#set! injection.language "python")
)
