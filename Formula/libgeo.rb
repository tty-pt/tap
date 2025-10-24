class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.2.0/libgeo-0.2.0-brew-arm64.tar.gz"
    sha256 "5131c7bbb0084706f06007c22c5cbe7e4c42630bee1a46a1f8b814c8ca7d0120"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.2.0/libgeo-0.2.0-brew-x86_64.tar.gz"
    sha256 "b064e78cc893ea638f070ebf228d49ded8326a5c5e663063f793e93a33b03219"
  end
  version "0.2.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
