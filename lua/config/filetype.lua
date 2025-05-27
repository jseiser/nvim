local configure = function()
	vim.filetype.add({
		extension = {
			tfstate = "json",
			tf = "terraform",
			tfvars = "terraform",
		},
		filename = {
			[".gitlab-ci.yml"] = "yaml.gitlab",
			[".dockerignore"] = "gitignore",
		},
		pattern = {
			["compose.*%.ya?ml"] = "yaml.docker-compose",
			["docker%-compose.*%.ya?ml"] = "yaml.docker-compose",
		},
	})
end

vim.api.nvim_create_autocmd({ "User" }, {
	pattern = "VeryLazy",
	group = vim.api.nvim_create_augroup("VeryLazy_filetypes", {}),
	callback = configure,
})
