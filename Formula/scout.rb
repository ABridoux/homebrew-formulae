class Scout < Formula
  desc "A command-line tool to read and modify Json, Plist, Yaml and Xml files using one single method."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/4.0.3/scout.zip"
  sha256 "b61c93295aeb3d2876ef52bbf04fb86b15167a5e2cca0022adf46163874821b9"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
