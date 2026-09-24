class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v1.4.0/libcorm-1.4.0-brew-arm64.tar.gz"
    sha256 "c588345bd973882dcc79ec4dc98fa5736ee088403bdf36a546b9f571d1c7a625"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v1.4.0/libcorm-1.4.0-brew-x86_64.tar.gz"
    sha256 "b392fd38ed8718903a7c5879d73a06a78e4bf59e0d1dfefafef277967f61ba02"
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
