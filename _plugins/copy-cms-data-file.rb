require 'fileutils'

# This plugin is used to expose the admin CMS data structure
# to the Jekyll site. Templates won't see some metadata
# from the CMS if we don't copy or link the admin/config.yml file to
# the _data folder.
Jekyll::Hooks.register :site, :after_init do |site|
  source = '../admin/config.yml'
  desination = '_data/cms.yml'
  Jekyll.logger.info "Jekyll Feed:", "Creating symlink file #{desination} pointing to #{source}"
  FileUtils.ln_s(source, desination, :force => true)
end