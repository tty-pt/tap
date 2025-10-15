class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.12/libqsys-0.0.12-brew-arm64.tar.gz"
    sha256 "4451e7b25a96d7157b08bf3e77f2dcb7961b64b5cac999a9ba847cc9bce376be"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.12/libqsys-0.0.12-brew-x86_64.tar.gz"
    sha256 "4fca2b5851113de6cb621659870ff9629940859a8772523f7cf9a4afb92b6960"
  end
  version "0.0.12"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
