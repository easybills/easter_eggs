require 'i18n'
I18n.load_path = Dir[File.expand_path('../../config/locales/*.yml', __FILE__)]

require 'enumerate_it'

module EasterEggs
end

require 'easter_eggs/universe'
require 'easter_eggs/search'
