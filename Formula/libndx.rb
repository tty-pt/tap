class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.1/libndx-1.0.1-brew-arm64.tar.gz"
    sha256 "2a73939e055481b1ec0b0509ddf046c6390593e51e61cde9a8de13606644e75d"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.1/libndx-1.0.1-brew-x86_64.tar.gz"
    sha256 "3d9397335970493b6c0803d731abe0b0b3f1ddc97a3053d8a5d334637091fb1f"
  end
  version "1.0.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
