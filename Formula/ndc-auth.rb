class Ndc-auth < Formula
  desc "ndc-auth binary package"
  homepage "https://github.com/tty-pt/ndc-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/ndc-auth/releases/download/v1.0.0/ndc-auth-1.0.0-brew-arm64.tar.gz"
    sha256 "c54314fef2c0380bf82db5f89ea914d69d339cc52f978e53b9722ce7e94a1c16"
  else
    url "https://github.com/tty-pt/ndc-auth/releases/download/v1.0.0/ndc-auth-1.0.0-brew-x86_64.tar.gz"
    sha256 "5f18f155ff1f8576ae169cd7a844cf037d8f2086809d20a156b93cc3a672c01e"
  end
  version "1.0.0"
  depends_on "libndc"
  depends_on "libqmap"
  depends_on "libndx"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
