vim_plugin_task "colorizer", "git://github.com/lilydjwg/colorizer.git"
vim_plugin_task "vim-autoclose", "git://github.com/andrewle/vim-autoclose.git"
vim_plugin_task "vim-rvm", "git://github.com/tpope/vim-rvm.git"

vim_plugin_task "snipmate-snippets", "git://github.com/akitaonrails/snipmate-snippets.git" do
  Dir["snippets/*.snippets"].each do |snippet|
    File.delete(snippet) if Dir.exist?(snippet.chomp(".snippets"))
  end
end
