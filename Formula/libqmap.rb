class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v1.1.0/libqmap-1.1.0-brew-arm64.tar.gz"
    sha256 "54b76c23a20f6d8f5f12b9c80275daf9ae9493cb4d95d6829b38d1dae4f931c7"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v1.1.0/libqmap-1.1.0-brew-x86_64.tar.gz"
    sha256 "da459a4876f9fcccfd961b9b15fc2ae289eb44a9f3c1f8968babe07252d35d4e"
  end
  version "1.1.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
