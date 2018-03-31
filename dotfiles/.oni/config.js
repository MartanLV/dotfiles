const activate = (oni) => {
	const { editors, input, menu } = oni

	input.unbindAll()

	const isVisualMode = () => editors.activeEditor.mode === "visual"
	const isNormalMode = () => editors.activeEditor.mode === "normal"
	const isNotInsertMode = () => editors.activeEditor.mode !== "insert"
	const isInsertOrCommandMode = () =>
		editors.activeEditor.mode === "insert" || editors.activeEditor.mode === "cmdline_normal"

	const isMenuOpen = () => menu.isMenuOpen()

	input.bind("<m-c>", "oni.editor.clipboard.yank", isVisualMode)
	input.bind("<m-v>", "oni.editor.clipboard.paste", isInsertOrCommandMode)

	input.bind("<m-,>", "oni.config.openConfigJs", isNormalMode);
	input.bind("<m-.>", "oni.config.openInitVim", isNormalMode);
};

module.exports = {
        "autoClosingPairs.enabled": true,
    "autoClosingPairs.default": [
        { open: "{", close: "}" },
        { open: "[", close: "]" },
        { open: "(", close: ")" },
    ],
    "tabs.showIndex": true,
    
	"oni.useDefaultConfig": true,
    "ui.fontSmoothing": "subpixel-antialiased",
    "ui.animations.enabled": false,
    "tabs.mode": "buffers",
	"oni.loadInitVim": !true,
	"editor.fontSize": "12px",
	"editor.fontFamily": "Monaco",
	"editor.completions.enabled": true
}
