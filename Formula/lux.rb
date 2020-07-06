class Lux < Formula
  desc "Command-line tool to colorise plain code (e.g. for terminal output) or HTML files code blocks"
  homepage "https://github.com/ABridoux/lux"
  url "https://github.com/ABridoux/lux/releases/download/0.3.7/lux.zip"
  sha256 "d42b9a8d58921848aed2ceafac7f351259c51e8ee36aed42dff9d282646b1153"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "lux", "#{prefix}/bin/lux"
    system "rm", "lux"
  end
  
  test do
    system "#{bin}/lux" "-h"
  end
end
