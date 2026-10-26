class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.7.0/libxylem-1.7.0-brew-arm64.tar.gz"
    sha256 "99fc6809f1d8475eba427715fb860d06ddcf96180b40aca100c75cb4cd64143c"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.7.0/libxylem-1.7.0-brew-x86_64.tar.gz"
    sha256 "4d2cbd2a5c2473684accfedaa8b71f411382b1480f2513a05e5141dfda926d92"
  end
  version "1.7.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
