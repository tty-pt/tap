class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.1/libstele-1.6.1-brew-arm64.tar.gz"
    sha256 "b5dc26e46001d6fb73c1ba3e3388fe48329c9de7c6beea112cc71098a7544224"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.1/libstele-1.6.1-brew-x86_64.tar.gz"
    sha256 "1fa5ba024f9df229f751ddc89c0d41f29c103f4e47690ece04c99efb1f0d75ed"
  end
  version "1.6.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
