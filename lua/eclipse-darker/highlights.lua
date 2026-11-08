local M = {}

function M.setup()
	local c = require("eclipse-darker.palette")
	local hl = vim.api.nvim_set_hl
	-- Core UI
	hl(0, "Normal", { fg = c.fg, bg = c.bg })
	hl(0, "NormalFloat", { fg = c.fg, bg = c.bg })
	hl(0, "NormalNC", { fg = c.fg, bg = c.bg })
	hl(0, "EndOfBuffer", { fg = c.bg, bg = c.bg })

	hl(0, "CursorLine", { bg = c.current_line })
	hl(0, "CursorLineNr", { fg = c.fg, bg = c.current_line })
	hl(0, "LineNr", { fg = c.line_number, bg = c.bg })

	hl(0, "Visual", { fg = c.selection_fg, bg = c.selection_bg })
	hl(0, "VisualNOS", { fg = c.selection_fg, bg = c.selection_bg })

	hl(0, "Search", { fg = c.fg, bg = c.search })
	hl(0, "IncSearch", { fg = c.fg, bg = c.search })
	hl(0, "CurSearch", { fg = c.fg, bg = c.search })
	hl(0, "MatchParen", { fg = c.bracket, bold = true })

	hl(0, "Whitespace", { fg = c.line_number })
	hl(0, "NonText", { fg = c.line_number })

	-- Float
	hl(0, "NormalFloat", {
		fg = "#cdd6f4",
		bg = "#181825",
	})

	hl(0, "FloatBorder", {
		fg = "#89b4fa",
		bg = "#181825",
	})

	hl(0, "FloatTitle", {
		fg = "#f9e2af",
		bg = "#181825",
		bold = true,
	})

	-- Status / diagnostics
	hl(0, "Error", { fg = c.error })
	hl(0, "ErrorMsg", { fg = c.error })
	hl(0, "DiagnosticError", { fg = c.error })
	hl(0, "DiagnosticWarn", { fg = c.doc_tag })
	hl(0, "DiagnosticInfo", { fg = c.find_scope })
	hl(0, "DiagnosticHint", { fg = c.inherited_field })

	hl(0, "DiagnosticUnderlineError", { undercurl = true })
	hl(0, "DiagnosticDeprecated", { fg = c.muted, strikethrough = true })
	hl(0, "Comment", { fg = c.muted })
	hl(0, "Todo", { fg = c.doc_tag, bold = true })

	hl(0, "DiagnosticError", { fg = "#f38ba8" })
	hl(0, "DiagnosticWarn", { fg = "#f9e2af" })
	hl(0, "DiagnosticInfo", { fg = "#89b4fa" })
	hl(0, "DiagnosticHint", { fg = "#a6e3a1" })

	hl(0, "DiagnosticVirtualTextError", {
		fg = "#f38ba8",
		bg = "#2a1f2d",
	})

	hl(0, "DiagnosticVirtualTextWarn", {
		fg = "#f9e2af",
		bg = "#2a271c",
	})
	-- Traditional Vim syntax groups
	hl(0, "Keyword", { fg = c.keyword, bold = true })
	hl(0, "Statement", { fg = c.keyword, bold = true })
	hl(0, "Conditional", { fg = c.keyword, bold = true })
	hl(0, "Repeat", { fg = c.keyword, bold = true })
	hl(0, "Label", { fg = c.keyword, bold = true })
	hl(0, "Exception", { fg = c.keyword, bold = true })

	hl(0, "Operator", { fg = c.operator })
	hl(0, "rustSigil", { fg = c.local_variable })
	hl(0, "rustStorage", { fg = c.keyword, bold = true })
	hl(0, "Delimiter", { fg = c.bracket })
	hl(0, "String", { fg = c.string })
	hl(0, "Character", { fg = c.string })
	hl(0, "Number", { fg = c.number })
	hl(0, "Float", { fg = c.number })
	hl(0, "rustBoolean", { fg = c.keyword })
	hl(0, "rustConst", { fg = c.constant, italic = true, bold = true })
	hl(0, "rustDerive", { fg = c.method_decl })
	hl(0, "rustDeriveTrait", { fg = c.interface })
	hl(0, "rustSelf", { fg = c.rust_self })
	hl(0, "rustQuestionMark", { fg = c.keyword, bold = true })

	hl(0, "Function", { fg = c.free_function_decl })
	hl(0, "Method", { fg = c.method_call })
	hl(0, "Type", { fg = c.class })
	hl(0, "Structure", { fg = c.class })
	hl(0, "Constant", { fg = c.constant, bold = true, italic = true })
	hl(0, "Identifier", { fg = c.local_variable })
	hl(0, "Special", { fg = c.annotation })
	hl(0, "Tag", { fg = c.find_scope })
	hl(0, "Attribute", { fg = c.annotation_key })

	hl(0, "Underlined", { fg = c.doc_link, underline = true })

	-- Treesitter captures
	hl(0, "@comment", { link = "Comment" })
	hl(0, "@comment.documentation", { fg = c.muted })
	hl(0, "@comment.todo", { fg = c.doc_tag, bold = true })

	hl(0, "@keyword.function", { fg = c.keyword, bold = true })
	hl(0, "@keyword.operator", { fg = c.keyword, bold = true })
	hl(0, "@keyword.return", { fg = c.keyword, bold = true })
	hl(0, "@operator", { fg = c.operator })

	hl(0, "@string", { fg = c.string })
	hl(0, "@string.escape", { fg = c.doc_link })
	hl(0, "@string.special", { fg = c.doc_link })
	hl(0, "@number", { fg = c.number })
	hl(0, "@boolean", { fg = c.number })
	hl(0, "@boolean.rust", { fg = c.keyword, bold = true })

	hl(0, "@variable", { fg = c.local_variable })
	hl(0, "@variable.builtin", { fg = c.constant, bold = true, italic = true })
	hl(0, "@variable.parameter", { fg = c.argument })
	hl(0, "@variable.parameter.builtin", { fg = c.argument })
	hl(0, "@constant", { fg = c.constant, bold = true, italic = true })
	hl(0, "@constant.rust", { fg = c.constant, italic = true })
	hl(0, "@constant.builtin", { fg = c.constant, bold = true, italic = true })
	hl(0, "@constant.builtin.rust", { fg = c.enum_member, italic = true })
	hl(0, "@field", { fg = c.field })
	hl(0, "@property", { fg = c.field })

	hl(0, "@function", { fg = c.free_function_decl })
	hl(0, "@function.call", { fg = c.free_function_call })
	hl(0, "@function.rust", { fg = c.free_function_decl })
	hl(0, "@function.call.rust", { fg = c.free_function_call })

	hl(0, "@function.method", { fg = c.method_decl, italic = true })
	hl(0, "@function.method.call", { fg = c.method_call, italic = true })
	hl(0, "@function.builtin", { fg = c.method_decl })
	hl(0, "@function.macro.rust", { fg = c.macro })
	hl(0, "@method.call", { fg = c.method_call, italic = true })

	hl(0, "@type", { fg = c.class })
	hl(0, "@type.builtin", { fg = c.interface })
	hl(0, "@type.definition", { fg = c.class })
	hl(0, "@type.qualifier", { fg = c.interface })
	hl(0, "@type.rust", { fg = c.class })

	hl(0, "@namespace", { fg = c.class })
	hl(0, "@namespace.rust", { fg = c.local_variable })

	hl(0, "@attribute", { fg = c.annotation, italic = true })
	hl(0, "@attribute.builtin", { fg = c.annotation, italic = true })
	hl(0, "@tag", { fg = c.find_scope })
	hl(0, "@tag.attribute", { fg = c.annotation_key })
	hl(0, "@tag.delimiter", { fg = c.bracket })

	hl(0, "@tag", { fg = "#82aaff" })
	hl(0, "@tag.html", { link = "@tag" })
	hl(0, "@tag_name", { fg = "#82aaff" })
	hl(0, "@tag_name.html", { link = "@tag" })

	hl(0, "@attribute", { fg = "#c792ea" })
	hl(0, "@attribute_name", { fg = "#c792ea" })
	hl(0, "@attribute_name.html", { link = "@attribute" })
	hl(0, "@tag.attribute", { fg = "#c792ea" })
	hl(0, "@tag.attribute.html", { link = "@tag.attribute" })

	hl(0, "@string", { fg = "#c3e88d" })
	hl(0, "@attribute_value", { fg = "#c3e88d" })
	hl(0, "@attribute_value.html", { link = "@attribute_value" })

	hl(0, "@text", { fg = "#d0d0d0" })
	hl(0, "@text.html", { link = "@text" })

	hl(0, "@punctuation.bracket", { fg = c.bracket })
	hl(0, "@punctuation.delimiter", { fg = c.bracket })
	hl(0, "@punctuation.special", { fg = c.bracket })

	hl(0, "@label", { fg = c.keyword })

	-- LSP semantic tokens
	hl(0, "@lsp.type.parameter", { fg = c.argument })
	hl(0, "@lsp.type.variable", { fg = c.local_variable })
	hl(0, "@lsp.type.property", { fg = c.field })
	hl(0, "@lsp.type.field", { fg = c.field })
	hl(0, "@lsp.type.enumMember", { fg = c.enum_member, italic = true })
	hl(0, "@lsp.type.enum", { fg = c.enum })
	hl(0, "@lsp.type.class", { fg = c.class })
	hl(0, "@lsp.type.interface", { fg = c.interface })
	hl(0, "@lsp.type.type", { fg = c.keyword })
	hl(0, "@lsp.type.function", { fg = c.free_function_decl })
	hl(0, "@lsp.type.method", { fg = c.method_decl })
	hl(0, "@lsp.type.decorator", { fg = c.proc_macro, italic = true })
	hl(0, "@lsp.type.namespace", { fg = c.local_variable })

	hl(0, "@lsp.type.selfKeyword.rust", { fg = c.rust_self, italic = false })
	hl(0, "@lsp.type.selfTypeKeyword.rust", { fg = c.rust_selfType, bold = true })
	hl(0, "@lsp.type.builtinType.rust", { fg = c.keyword, bold = true })
	hl(0, "@lsp.type.macro.rust", { fg = c.macro })
	hl(0, "@lsp.type.procMacro.rust", { fg = c.macro })
	hl(0, "@lsp.type.constant.rust", { fg = c.constant, italic = true })
	hl(0, "@lsp.type.method.rust", { fg = c.method_call })
	hl(0, "@lsp.type.decorator.rust", { fg = c.derive_macro })
	hl(0, "@lsp.type.attributeBracket.rust", { fg = c.derive_macro })
	hl(0, "@lsp.type.formatSpecifier.rust", { fg = c.keyword })
	hl(0, "@lsp.type.operator.rust", { fg = c.keyword })
	hl(0, "@lsp.type.deriveHelper.rust", { fg = c.derive_macro })
	hl(0, "@lsp.type.enumMember.rust", { fg = c.enum_member, italic = true })
	hl(0, "@lsp.type.derive.rust", { fg = c.free_function_decl })

	hl(0, "@lsp.typemod.typeAlias.declaration.rust", { fg = c.class, italic = true })
	hl(0, "@lsp.typemod.typeAlias.library.rust", { fg = c.class })
	hl(0, "@lsp.typemod.method.declaration.rust", { fg = c.method_call, italic = true })
	hl(0, "@lsp.typemod.function.library.rust", { fg = c.free_function_call })
	hl(0, "@lsp.typemod.method.trait.rust", { fg = c.trait_method_decl, italic = true })
	hl(0, "@lsp.typemod.builtinAttribute.attribute.rust", { fg = c.derive_macro })
	hl(0, "@lsp.typemod.generic.attribute.rust", { fg = c.derive_macro })
	hl(0, "@lsp.typemod.const.constant.rust", { fg = c.constant, italic = true })
	hl(0, "@lsp.typemod.property.declaration.rust", { fg = c.field })
	hl(0, "@lsp.typemod.variable.declaration.rust", { fg = c.local_variable })
	hl(0, "@lsp.typemod.struct.declaration.rust", { fg = c.class })
	hl(0, "@lsp.typemod.derive.defaultLibrary.rust", { fg = c.interface })
	hl(0, "@lsp.mod.trait.rust", { fg = c.trait_method_decl, italic = true })

	hl(0, "@lsp.mod.static", { fg = c.method_call, italic = true })
	hl(0, "@lsp.mod.abstract", { fg = c.abstract_method })
	hl(0, "@lsp.mod.deprecated", { fg = c.muted, strikethrough = true })
	hl(0, "@lsp.mod.crateRoot.rust", { fg = c.interface })

	-- Floating windows / completion UI
	hl(0, "Pmenu", { fg = c.fg, bg = c.current_line })
	hl(0, "PmenuSel", { fg = c.selection_fg, bg = c.selection_bg })
	hl(0, "PmenuSbar", { bg = c.search_result })
	hl(0, "PmenuThumb", { bg = c.line_number })
	hl(0, "FloatBorder", { fg = c.line_number, bg = c.bg })

	-- Search highlighting
	hl(0, "Substitute", { fg = c.fg, bg = c.find_scope })

	-- Fold / diff
	hl(0, "Folded", { fg = c.muted, bg = c.current_line })
	hl(0, "DiffAdd", { fg = c.inherited_field, bg = c.current_line })
	hl(0, "DiffChange", { fg = c.find_scope, bg = c.current_line })
	hl(0, "DiffDelete", { fg = c.error, bg = c.current_line })
	hl(0, "DiffText", { fg = c.selection_fg, bg = c.search })

	-- Common UI
	hl(0, "SignColumn", { bg = c.bg })
	hl(0, "FoldColumn", { fg = c.line_number, bg = c.bg })
	hl(0, "WinSeparator", { fg = c.line_number, bg = c.bg })
	hl(0, "StatusLine", { fg = c.fg, bg = c.current_line })
	hl(0, "StatusLineNC", { fg = c.muted, bg = c.current_line })

	-- Rust / trait-specific captures
	hl(0, "@trait", { fg = c.interface })
	hl(0, "@trait.definition", { fg = c.interface })
	hl(0, "@trait.definition.rust", { fg = c.interface })
	hl(0, "@trait.function.definition", { fg = c.method_decl })
	hl(0, "@trait.method.definition", { fg = c.trait_method_decl, italic = true })
	hl(0, "@trait.impl.function.definition", { fg = c.trait_function_decl, italic = true })
	hl(0, "@trait.impl.method.definition", { fg = c.trait_method_decl, italic = true })

	hl(0, "@function.definition", { fg = c.free_function_decl })
	hl(0, "@function.definition.rust", { link = "@function.definition" })

	hl(0, "@associated.function.definition", { fg = c.trait_function_decl, italic = true })
	hl(0, "@associated.function.definition.rust", { fg = c.trait_function_decl, italic = true })

	hl(0, "@method.definition", { fg = c.method_decl })
	hl(0, "@method.definition.rust", { fg = c.method_decl, italic = false })

	hl(0, "@function.call.rust", { fg = c.free_function_call })
	hl(0, "@function.method.call.rust", { fg = c.method_call, italic = true })
	hl(0, "@method.call.rust", { fg = c.method_call, italic = true })

	hl(0, "@trait.member.definition", { fg = c.trait_method_decl })
	hl(0, "@trait.member.definition.rust", { fg = c.trait_method_decl, italic = true })
	hl(0, "@trait.member.call.rust", { fg = c.method_call, italic = true })
end

return M
