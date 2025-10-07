class libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11.tar.gz"
  sha256 "a10a2dd8c11c95ca5ba83735f4b1a63cdfe07c94ac30fd0990571da5b807fed3"
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
