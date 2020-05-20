class Lux < Formula
  desc "Command-line tool to colorise plain code (e.g. for terminal output) or HTML files code blocks"
  homepage "https://github.com/ABridoux/lux"
  url "https://github.com/ABridoux/lux/releases/download/0.1.1/lux.zip"
  sha256 "0674737dcfcdd94c4c2aac999e438af809456581cc1abac0722e775a0a79fe90"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "lux", "#{prefix}/bin/lux"
    system "rm", "lux"
  end
  
  test do
    system "#{bin}/lux" "-h"
  end
end
