class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.1.0/libndc-1.1.0-brew-arm64.tar.gz"
    sha256 "889387f5a211c499dcc5e51eadd5ce35879fd417f8f4a489d76ef930dfd4ac6c"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.1.0/libndc-1.1.0-brew-x86_64.tar.gz"
    sha256 "96435e50ecb1beeb3237e45681970a658e5896c79caffee73dea62e01a3d8357"
  end
  version "1.1.0"
  depends_on "libqmap"
  depends_on "libndx"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
