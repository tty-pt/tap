class Libmm < Formula
  desc "libmm binary package"
  homepage "https://github.com/tty-pt/libmm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libmm/releases/download/v1.0.0/libmm-1.0.0-brew-arm64.tar.gz"
    sha256 "055f567674054ba82199fc27c1d1acfac13400c20cd9d618d42b71726980fb79"
  else
    url "https://github.com/tty-pt/libmm/releases/download/v1.0.0/libmm-1.0.0-brew-x86_64.tar.gz"
    sha256 "115e861faa7da462aa65995b09d24d4d184c2aa42bed2d8c27796c0bb062466f"
  end
  version "1.0.0"
  depends_on "libstele"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
