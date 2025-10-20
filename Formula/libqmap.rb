class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.4.0/libqmap-0.4.0-brew-arm64.tar.gz"
    sha256 "9663c21b9899eb8ad12719b31e676bcd15ee35f70afbe25db63c281886a46155"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.4.0/libqmap-0.4.0-brew-x86_64.tar.gz"
    sha256 "ef4a80ee7db32f13b314a2839931984772d3dea547c87b8efdb558fc32c2f7e1"
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
