class Scout < Formula
  desc "A command-line tool to read and modify Json, Plist, and Xml files using one method."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/1.3.2/scout.zip"
  sha256 "41bce07a8e10399f261001d18dbbb946fe8b6ea0f3ad31d28afc6306389afe52"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
