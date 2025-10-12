class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos-arm64.tar.gz"
    sha256 "e8218ec3e847e01f95dbb91132824fecc89112eaf77936948778137cc678003a"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos-x86_64.tar.gz"
    sha256 "6b6d417cf8d5eea914bef8bfa8a5eeb6f5fe420e1886b422e1e052cb4f69c058"
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
