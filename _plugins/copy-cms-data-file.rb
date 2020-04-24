require 'fileutils'

Jekyll::Hooks.register :site, :after_init do |site|
  source = '../admin/config.yml'
  desination = '_data/cms.yml'
  Jekyll.logger.info "Jekyll Feed:", "Creating symlink file #{desination} pointing to #{source}"
  FileUtils.ln_s(source, desination, :force => true)
end