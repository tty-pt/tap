class Libqdb < Formula
  desc "libqdb binary package"
  homepage "https://github.com/tty-pt/libqdb"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqdb/releases/download/v0.5.0/libqdb-0.5.0-brew-arm64.tar.gz"
    sha256 "1b82f78dab506fa0e36e90f95a83daa47760b3b87dd2bee3ecd538d088714a9b"
  else
    url "https://github.com/tty-pt/libqdb/releases/download/v0.5.0/libqdb-0.5.0-brew-x86_64.tar.gz"
    sha256 "98f5cd2e909b3fab52fe2997aaf8b0feea8080d868ce98c18f2350109cbec8ee"
  end
  version "0.5.0"
  depends_on "libqmap"
  depends_on "db"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
