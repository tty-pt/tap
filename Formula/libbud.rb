class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.3.0/libbud-1.3.0-brew-arm64.tar.gz"
    sha256 "546338aa647033baa0abb3eb232605f74dcf1dbd7344846ff7b068d940fba469"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.3.0/libbud-1.3.0-brew-x86_64.tar.gz"
    sha256 "33e1ced93cb6d6e93eb476d61d6a3691f82140fbf9783548edcd4e8d3f07ec71"
  end
  version "1.3.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
