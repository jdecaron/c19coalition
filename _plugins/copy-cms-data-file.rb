require 'fileutils'

Jekyll::Hooks.register :site, :pre_render do |site|
  source = 'admin/config.yml'
  desination = '_data/cms.yml'
  if !File.file?(desination) || !FileUtils.identical?(source, desination)
    Jekyll.logger.info "Jekyll Feed:", "Copying file #{source} to #{desination}"
    FileUtils.cp(source, desination)
  end
end