class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.0/libndc-0.15.0-macos-arm64.tar.gz"
    sha256 "c7511954c4f4200714c95d86dc701b06e1c23d5c1e092c55877bed0c6a7026ef"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.0/libndc-0.15.0-macos-x86_64.tar.gz"
    sha256 "fd4c4018831f3eb873194bb7a714ac1ab25d565aef86842258a7e1022c2d54cc"
  end
  version "0.15.0"
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
