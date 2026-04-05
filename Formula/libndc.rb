class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.0/libndc-1.0.0-brew-arm64.tar.gz"
    sha256 "6c4ad5f320c93a5268c52a9ea1f02856e2554874418334a549fd2bc776eef5be"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.0/libndc-1.0.0-brew-x86_64.tar.gz"
    sha256 "ea6356bf012d03d9f6760392c13885b5ee9a78a99911011e6d291d4a035222b9"
  end
  version "1.0.0"
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
