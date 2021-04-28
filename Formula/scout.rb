class Scout < Formula
  desc "A command-line tool to read and modify Json, Plist, Yaml and Xml files using one single method."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/4.0.0/scout.zip"
  sha256 "8d585f947fe5f2f0d84b5e79f961a71129cf9ac25ad974e141258b00f9e394de"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
