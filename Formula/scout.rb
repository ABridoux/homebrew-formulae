class Scout < Formula
  desc "A command-line tool to read and modify Json, Plist, and Xml files using one method."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/1.0.2/scout.zip"
  sha256 "4c3a8bcf0c134ec253a8a0da6589164f4b05b3866cf0b95d4269afc948e88c7f"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
