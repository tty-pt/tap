class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.4.0/libqmap-0.4.0-brew-arm64.tar.gz"
    sha256 "093cb9c09b1f011f5b9cd477401c83000c0032e78cc3b17461488477ecab6846"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.4.0/libqmap-0.4.0-brew-x86_64.tar.gz"
    sha256 "25ef3cdd8a075c1b3c45b0f16b67d6ac1c4877236a785cd9ca3b7aad4c196aee"
  end
  version "0.4.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
