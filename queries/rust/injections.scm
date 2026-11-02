
(macro_invocation
  macro: (identifier) @macro_name
  (token_tree) @injection.content
  (#eq? @macro_name "html")
  (#set! injection.language "html")
  (#set! injection.include-children))

