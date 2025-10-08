class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://tty.pt/brew/libqsys-0.0.11-macos-arm64.tar.gz"
    sha256 ""
  else
    url "https://tty.pt/brew/libqsys-0.0.11-macos-x86_64.tar.gz"
    sha256 ""
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
