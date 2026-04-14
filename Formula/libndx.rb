class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.1.1/libndx-1.1.1-brew-arm64.tar.gz"
    sha256 "d9536e015473a4e47a201628b430611251eca7defe439d80b45634efd04d511b"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.1.1/libndx-1.1.1-brew-x86_64.tar.gz"
    sha256 "ae690456455e804c1321427f4c183730611cc39434331eb71fc2af5d21e74367"
  end
  version "1.1.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
