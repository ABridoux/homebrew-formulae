class Scout < Formula
  desc "Make specific formats data values reading and writing simple when the data format is not known at build time."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/archive/0.2.2.tar.gz"
  sha256 "09f058b73f70dd15b7f80e24a491869d4c307b3d5847d31164506d2b211dacbf"

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
