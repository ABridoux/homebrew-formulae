class Scout < Formula
  desc "A command-line tool to read and modify Json, Plist, and Xml files using one method."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/1.2.2/scout.zip"
  sha256 "406796b4e224920973c4d23e45e4171d1bfa142ec89edc6d0c9480e7ef4e6a63"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
