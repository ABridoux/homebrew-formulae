class Scout < Formula
  desc "Make specific formats data values reading and writing simple when the data format is not known at build time."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/archive/0.1.3.tar.gz"
  sha256 "f06fd98ccb208d439f7d07d693ec767e1c8302595658bfd99ac8ed8be6ddb927"
  
  depends_on :xcode => "11.3"

  def install
    system "swift", "build", "-c", "release"
    system "mkdir", "#{prefix}/bin"
    system "install", ".build/release/ScoutCLT", "#{prefix}/bin/scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
