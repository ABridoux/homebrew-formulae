class Scout < Formula
  desc "A command-line tool to read and modify Json, Plist, Yaml and Xml files using one single method."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/3.0.3/scout.zip"
  sha256 "299e10739d0def799f53d4891890322285355485a841af897a00e4ef1379ed69"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
