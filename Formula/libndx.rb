class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.0/libndx-1.0.0-brew-arm64.tar.gz"
    sha256 "afb0eb3800f41f37ce99b82c756ca589834404d41de2689bcd0837e0a1701798"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.0/libndx-1.0.0-brew-x86_64.tar.gz"
    sha256 "1e864908e3782820a7a085db286cc1bdb7d0f6ea50a49ed283bdf75bdd0266d3"
  end
  version "1.0.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
