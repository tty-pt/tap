class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.1.0/libislet-1.1.0-brew-arm64.tar.gz"
    sha256 "2935c1fdf3b2a5c96abca4ca0acd652ce4e3abf3d77cba4b950ea4b39dd6566b"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.1.0/libislet-1.1.0-brew-x86_64.tar.gz"
    sha256 "085c2c8519dab112c8fa25aa521801455e3c8135c1ae674ae922846dac4947e2"
  end
  version "1.1.0"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
