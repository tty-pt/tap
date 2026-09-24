class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v1.4.0/libcorm-1.4.0-brew-arm64.tar.gz"
    sha256 "119244944da0a8ee245eb047cf984e513bba9680c0165725bd6c655b331493a4"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v1.4.0/libcorm-1.4.0-brew-x86_64.tar.gz"
    sha256 "2f18cedf3b42762fecd560a40651c8cf20160087afd43676dfb08c76c9e05977"
  end
  version "1.4.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
