class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.9/libndc-1.0.9-brew-arm64.tar.gz"
    sha256 "f79129da5960a9a7807677f1ab246d51f7680e15f83f4d427fa62f4269ce056d"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.9/libndc-1.0.9-brew-x86_64.tar.gz"
    sha256 "0bb113dff664909d00e32e36627bc8f80903e74f6162ca2b82b1d130fa69b410"
  end
  version "1.0.9"
  depends_on "libqmap"
  depends_on "libndx"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
