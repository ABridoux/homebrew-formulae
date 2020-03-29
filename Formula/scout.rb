class Scout < Formula
  desc "Make specific formats data values reading and writing simple when the data format is not known at build time."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/0.3.1/scout-0.3.1.zip"
  sha256 "e80adcd8ec30a4583967bfaa535c96cf6081a2098aeeb606612aac4aaa4c9653"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
