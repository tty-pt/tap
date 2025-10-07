class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11.tar.gz"
  sha256 "2a6029254f149e34f4e011fafaa5ddbac01a1589e3890f52ddea9a5893b32456"
  version "0.0.11"

  def install
    prefix.install Dir["*"]
    include.install Dir["include/*.h"] if Dir.exist?("include")
  end

  test do
    system "true"
  end
end
