class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.2/libstele-1.5.2-brew-arm64.tar.gz"
    sha256 "06d2bba460a315a9912c7d8120663589a20a25654e0c617ee238835dc0d20e61"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.2/libstele-1.5.2-brew-x86_64.tar.gz"
    sha256 "281e25d484d4194a65a64d9acfe2c4d79555f6dc488b56abe2834d0769c7dc9e"
  end
  version "1.5.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
