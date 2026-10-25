class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.1.0/liblemma-1.1.0-brew-arm64.tar.gz"
    sha256 "e86c478c13febb30147de1b9c767052860d585313608d89f8162a663fb18ff86"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.1.0/liblemma-1.1.0-brew-x86_64.tar.gz"
    sha256 "2b33be15993e8c7da11fecc299b57e5ac811dece486d22ba1f66ff73b9c1b450"
  end
  version "1.1.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
