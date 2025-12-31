class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.2/libndx-0.1.2-brew-arm64.tar.gz"
    sha256 "19f0a44e78b50e189caa29c61fcaa27b7143355a9c9c6c888790da3cb09766a7"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.2/libndx-0.1.2-brew-x86_64.tar.gz"
    sha256 "7a906a27f58e1f715ebb5ec2132605eefcc44df692c16691502f409d65df3167"
  end
  version "0.1.2"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
