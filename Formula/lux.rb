class Lux < Formula
  desc "Command-line tool to colorise plain code (e.g. for terminal output) or HTML files code blocks"
  homepage "https://github.com/ABridoux/lux"
  url "https://github.com/ABridoux/lux/releases/download/0.4.1/lux.zip"
  sha256 "7007adc030e800b2f7312df2803d25bbcfe82608caf75218033aaae07c502380"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "lux", "#{prefix}/bin/lux"
    system "rm", "lux"
  end
  
  test do
    system "#{bin}/lux" "-h"
  end
end
