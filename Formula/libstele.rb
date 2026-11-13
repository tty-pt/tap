class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.0/libstele-1.6.0-brew-arm64.tar.gz"
    sha256 "7fd5a26e0c23af2fd498d6f1c176dcabec3987b15da774d69622cfc488b1e88e"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.0/libstele-1.6.0-brew-x86_64.tar.gz"
    sha256 "946b2b6dcc5f77c1a7d210c5ce5da3a2ebef70ad70583d772e861d107d88b5b3"
  end
  version "1.6.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
