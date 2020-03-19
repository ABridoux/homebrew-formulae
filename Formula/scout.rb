class Scout < Formula
  desc "Make specific formats data values reading and writing simple when the data format is not known at build time."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/archive/0.1.4.tar.gz"
  sha256 "52c8106994bedf5b679287777f074d513e6b5bbe24900f6c44b618a2d9880fb5"
  
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
