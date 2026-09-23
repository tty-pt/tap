class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.3.0/libjoint-1.3.0-brew-arm64.tar.gz"
    sha256 "43febf697a6ad52bf47b8d94a8253ff775f7ff25fad25ab4b50b973486e29848"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.3.0/libjoint-1.3.0-brew-x86_64.tar.gz"
    sha256 "d6426549e0c00ea9c10a0222f96ba6e221afebf3087f5a887a7896b6307edc9c"
  end
  version "1.3.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
