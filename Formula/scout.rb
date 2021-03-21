class Scout < Formula
  desc "A command-line tool to read and modify Json, Plist, Yaml and Xml files using one single method."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/3.0.2/scout.zip"
  sha256 "b126bf658a6bc9bb0ef3f64affa1e48d96608f3003d6eb3299ff4379fe127b4a"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
