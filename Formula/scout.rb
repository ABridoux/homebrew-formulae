class Scout < Formula
  desc "A command-line tool to read and modify Json, Plist, Yaml and Xml files using one single method."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/3.0.1/scout.zip"
  sha256 "c3311b5347ed85295a6e524153ef68285ec887ed2b91fa058ec3532d10df631b"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
