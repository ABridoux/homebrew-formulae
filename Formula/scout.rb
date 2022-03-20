class Scout < Formula
  desc "A command-line tool to read and modify JSON, Plist, YAML and XML files"
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/4.1.0/scout.zip"
  sha256 "93b52d482d2ce1c24648510779e3c1e2f36540878e9325026efe8ab091d8f936"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
