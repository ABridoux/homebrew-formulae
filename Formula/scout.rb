class Scout < Formula
  desc "Make specific formats data values reading and writing simple when the data format is not known at build time."
  homepage "https://github.com/ABridoux/scout"
  url "https://github.com/ABridoux/scout/archive/0.2.1.tar.gz"
  sha256 "7dbc35468f9f7ef1fceab7c15421f798ae91f26a21ca82456ea330ed52453666"

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
