class LibhyleSource < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.3.0/libhyle-source-1.3.0-brew-arm64.tar.gz"
    sha256 "3396059947426fb0bfdb03382bfc43b54b14da885a39e025a9b6a0b057a1f7c5"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.3.0/libhyle-source-1.3.0-brew-x86_64.tar.gz"
    sha256 "94e8464431640f97bc89204bc44250c07981e3995b3c917e5044cd51086cef23"
  end
  version "1.3.0"
  depends_on "libqsys"
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
