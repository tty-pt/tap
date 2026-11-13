class LibhyleSource < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.4.0/libhyle-source-1.4.0-brew-arm64.tar.gz"
    sha256 "efa94da79465718c51193982962b17e63b76e7e97fc7c8958b3f902e9c1922fe"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.4.0/libhyle-source-1.4.0-brew-x86_64.tar.gz"
    sha256 "1659cacf8c46f491b050ca46ff980fc37f4c9b1f370c703367af7b6f840ae8a9"
  end
  version "1.4.0"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "liblemma"
  depends_on "libhyle"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
