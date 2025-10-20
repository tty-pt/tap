class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.6/libgeo-0.0.6-brew-arm64.tar.gz"
    sha256 "77d4dbd18ae6a2484bf41d2e5a4fb829637853845f0e56686f1b4d2be7b78964"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.6/libgeo-0.0.6-brew-x86_64.tar.gz"
    sha256 "ecb6b81e35ab3830f5aeaf9290f2a6f7162b8667069218904296aecf42ebb34b"
  end
  version "0.0.6"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
