require 'uri'

class Release

  def initialize()
  end

  def execute(site)
    populateReleaseValues(site.narayana_releases, "narayana")
    populateReleaseValues(site.nta_releases, "nta")
  end

  def populateReleaseValues(releases, product)
    releases.each do |release|
      (release.files).each do |file|
        file[:uri] = getUri(file, product, release[:version])
      end
    end
  end

  def getUri(file, product, version)
    ending = ""

    if (file[:name].include? "-src")
      ending = "#{version}/src/#{file.name}"
    else
      ending = "#{version}/binary/#{file.name}"
    end

    if (product == "narayana")
      "http://www.jboss.org/jbosstm/downloads/#{ending}"
    elsif (product == "nta")
      "http://www.jboss.org/jbosstm/downloads/nta/#{ending}"
    else
      ""
    end
  end
end