class Scout < Formula
  desc "A command-line tool to read and modify Json, Plist, and Xml files using one method."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/1.3.0/scout.zip"
  sha256 "e027b157cf3fbd80fd04e0e7b676c55e49dab40ca97930c0df8c6b87525cdcd4"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
