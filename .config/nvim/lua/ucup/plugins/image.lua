return {
	"3rd/image.nvim",
	build = false,
	ft = { "markdown", "vimwiki", "asciidoc", "adoc", "typst" },
	cmd = { "ImageReport" },
	opts = {
		backend = "kitty",
		processor = "magick_cli",
		integrations = {
			markdown = {
				enabled = true,
				clear_in_insert_mode = false,
				download_remote_images = true,
				only_render_image_at_cursor = false,
				floating_windows = false,
				filetypes = { "markdown", "vimwiki" },
			},
			asciidoc = {
				enabled = true,
				clear_in_insert_mode = false,
				download_remote_images = true,
				filetypes = { "asciidoc", "adoc" },
			},
			typst = {
				enabled = true,
				filetypes = { "typst" },
			},
		},
		max_height_window_percentage = 50,
		window_overlap_clear_enabled = true,
		tmux_show_only_in_active_window = true,
		hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
	},
}
