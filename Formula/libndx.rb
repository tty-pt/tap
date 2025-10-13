class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-macos-arm64.tar.gz"
    sha256 "e43f15ceff7f84ecf03488ed06a8d7e8b145aa80f67b9b39e9ad096ee61d8f25"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7-macos-x86_64.tar.gz"
    sha256 "42284714cdb25c37716f64107ecc1d233bc1dda07ad198bb0d19a7a969cce58f"
  end
  version "0.0.7"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
