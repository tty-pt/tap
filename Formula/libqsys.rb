class Ulibqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11.tar.gz"
  sha256 "4f8d2364c9840ca11b0cf585729ea929fbed7669a01bf537f8bbf2156c8f7426"
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
