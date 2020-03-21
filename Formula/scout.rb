class Scout < Formula
  desc "Make specific formats data values reading and writing simple when the data format is not known at build time."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/archive/0.2.0.tar.gz"
  sha256 "4f952ef20da86812f1520fb68bd6b1d03a6f98243d936b5a4d218685e214d910"

  def install
    system "curl", "-o", "scout.zip", "https://abridoux-public.s3.us-east-2.amazonaws.com/scout/scout-latest.zip"
    system "unzip", "scout.zip"
    system "rm", "scout.zip"
    system "mkdir", "#{prefix}/bin"
    system "install", "scout", "#{prefix}/bin/scout"
    system "rm", "scout"
  end
  
  test do
    system "#{bin}/scout" "-h"
  end
end
