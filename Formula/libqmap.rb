class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-macos-arm64.tar.gz"
    sha256 "c6a8de64e6fb0eb12869af4e149a847b2d98b0c3d78d902191da71bbbf565915"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-macos-x86_64.tar.gz"
    sha256 "116ef2f13ad76c257723984a6231e9b359ebf2e5cf3155593df334c7aa1c7bfa"
  end
  version "0.3.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
