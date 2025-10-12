class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos-arm64.tar.gz"
    sha256 "1791b704b421aede3447eb09688ffcd7a6c8972c7e1d8fcdfe6f7f77db0a437b"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos-x86_64.tar.gz"
    sha256 "54a3e16de364e2e826c876634fdbfe409dff55a108df3b407cce3b340301f820"
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
