class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.1/libbud-1.2.1-brew-arm64.tar.gz"
    sha256 "eec22deaff9510c43a0e7dc80024b852c30d40758faa4f977578ff44c402d8ec"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.2.1/libbud-1.2.1-brew-x86_64.tar.gz"
    sha256 "6c18d72bb5bdb974325f519a6b07630613a0c8e2803b9faa262d08d79c9df87f"
  end
  version "1.2.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
