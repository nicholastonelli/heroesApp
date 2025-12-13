require 'pathname'

path = Pathname.new File.join Rails.root, 'db', 'seeds', 'templates'

Charactersheet.create! name: "Phearon"