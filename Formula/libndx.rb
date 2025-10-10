class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-macos-arm64.tar.gz"
    sha256 "48b46206b34028af1c823eac479b8ddabe56081607c0015368ae051beba4dba7"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-macos-x86_64.tar.gz"
    sha256 "dd9538930dc6c53aec87bc37ca5d41fb88f97b7ee767b9b6ec13a7e51d88f8e2"
  end
  version "0.0.7"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
