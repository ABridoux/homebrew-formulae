class Scout < Formula
  desc "A command-line tool to read and modify Json, Plist, and Xml files using one method."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/releases/download/1.2.3/scout.zip"
  sha256 "2e60c2e2ac9c25c0aa6e2fe4abdb68065bfeef66ad071a812f3f47f265e7f93b"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
