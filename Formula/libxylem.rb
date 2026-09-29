class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.1/libxylem-1.4.1-brew-arm64.tar.gz"
    sha256 "4d2c0a58f5da140414b7238952cb5d4dddf54be87db5cf8416f852ec8fcae8ac"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.1/libxylem-1.4.1-brew-x86_64.tar.gz"
    sha256 "359551c4ef0d73106fed7773df2eaf8552ff4af71492d0e0d468b7924c0ba0f5"
  end
  version "1.4.1"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
