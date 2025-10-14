class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.1/libndc-0.15.1-macos-arm64.tar.gz"
    sha256 "3aed4e8d4f60c03ccbf18c3d0077081ffbbfe153ab8071f7a9114ef4fea4e618"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.1/libndc-0.15.1-macos-x86_64.tar.gz"
    sha256 "dd4a53d2466b65b4b3942eb9c5979de1a8fff7e8001c0502ff7ea8ab5ffc0d8b"
  end
  version "0.15.1"
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
