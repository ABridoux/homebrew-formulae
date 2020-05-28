class Lux < Formula
  desc "Command-line tool to colorise plain code (e.g. for terminal output) or HTML files code blocks"
  homepage "https://github.com/ABridoux/lux"
  url "https://github.com/ABridoux/lux/releases/download/0.2.0/lux.zip"
  sha256 "73a33029400a3b66f1fcec405444b8351924f18fafd06f334664ec7701ac310b"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "lux", "#{prefix}/bin/lux"
    system "rm", "lux"
  end
  
  test do
    system "#{bin}/lux" "-h"
  end
end
