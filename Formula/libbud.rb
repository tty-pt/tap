class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.0/libbud-1.2.0-brew-arm64.tar.gz"
    sha256 "a4716ac09eb42e471386a7b0bc8d91fd96465d29d3d6579483a8f607edf8f7d1"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.0/libbud-1.2.0-brew-x86_64.tar.gz"
    sha256 "78d3338020d718cfafcbe29bede62c622e23e4c247b34abdf236d9c1e3939d1c"
  end
  version "1.2.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
