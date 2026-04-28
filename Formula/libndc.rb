class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.3.0/libndc-1.3.0-brew-arm64.tar.gz"
    sha256 "19cf75622edb8204e227fa72b7c3d0948d0936f399c0eb5b44abde3c6c688f2e"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.3.0/libndc-1.3.0-brew-x86_64.tar.gz"
    sha256 "43f97bc0759ea9234dd6a8fd9a62b5c97fd894152e99f676ee490ad48480fa0a"
  end
  version "1.3.0"
  depends_on "libqmap"
  depends_on "libndx"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
