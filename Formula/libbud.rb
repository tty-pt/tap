class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.0.2/libbud-1.0.2-brew-arm64.tar.gz"
    sha256 "16f84146e1b3b31e4a88155ca32be0ec0439c49ce0b38f27346123c140e38e7e"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.0.2/libbud-1.0.2-brew-x86_64.tar.gz"
    sha256 "59a354b4619922b50cb2719cf8955d6614cdf36822d7af21d09268a2155bc221"
  end
  version "1.0.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
