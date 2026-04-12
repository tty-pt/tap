class Ndc-tty < Formula
  desc "ndc-tty binary package"
  homepage "https://github.com/tty-pt/ndc-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/ndc-tty/releases/download/v1.0.0/ndc-tty-1.0.0-brew-arm64.tar.gz"
    sha256 "7ca7d687655ab885e4cac6fb4b198da7220c926fb15307344a5670966c79c5d2"
  else
    url "https://github.com/tty-pt/ndc-tty/releases/download/v1.0.0/ndc-tty-1.0.0-brew-x86_64.tar.gz"
    sha256 "4efa0b3caf782e38daba59ac8c9b17daa2eeea14659ea0897f6c62f8e5c458fb"
  end
  version "1.0.0"
  depends_on "libndc"
  depends_on "libndx"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
