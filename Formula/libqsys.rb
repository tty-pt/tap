class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.2/libqsys-0.1.2-brew-arm64.tar.gz"
    sha256 "e13533dfddf1fc97827c4b0dcdc982ae158c71906d35add59179546708b4a2ec"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.2/libqsys-0.1.2-brew-x86_64.tar.gz"
    sha256 "3cbc8dba77a8cb23a46ef7d1d0d1eaf92d0146441bd8f1f262eb5f384271cfa5"
  end
  version "0.1.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
