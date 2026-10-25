class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.6.0/libxylem-1.6.0-brew-arm64.tar.gz"
    sha256 "15368a703651b09f89a02cd084312719b7fb36b415176713096db93279427b06"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.6.0/libxylem-1.6.0-brew-x86_64.tar.gz"
    sha256 "4d785e8bee9d858daf9d8457727730f3152f0f1e313b0c50e7ce9ca7e2813d45"
  end
  version "1.6.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
