class Lux < Formula
  desc "Command-line tool to colorise plain code (e.g. for terminal output) or HTML files code blocks"
  homepage "https://github.com/ABridoux/lux"
  url "https://github.com/ABridoux/lux/releases/download/0.2.1/lux.zip"
  sha256 "71eaeb04f2b67dbe8370105e2183c1167eb30312801e0c5c4de09ec95abf7868"

  def install
    system "mkdir", "#{prefix}/bin"
    system "install", "lux", "#{prefix}/bin/lux"
    system "rm", "lux"
  end
  
  test do
    system "#{bin}/lux" "-h"
  end
end
