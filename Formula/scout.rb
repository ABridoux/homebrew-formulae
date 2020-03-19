class Scout < Formula
  desc "Make specific formats data values reading and writing simple when the data format is not known at build time."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/archive/0.2.0.tar.gz"
  sha256 "4f952ef20da86812f1520fb68bd6b1d03a6f98243d936b5a4d218685e214d910"
  
  depends_on :xcode => "10"

  def install
    system "swift", "build", "-c", "release"
    system "mkdir", "#{prefix}/bin"
    system "install", ".build/release/ScoutCLT", "#{prefix}/bin/scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
