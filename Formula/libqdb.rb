class Libqdb < Formula
  desc "libqdb binary package"
  homepage "https://github.com/tty-pt/libqdb"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqdb/releases/download/v0.5.0/libqdb-0.5.0-brew-arm64.tar.gz"
    sha256 "63105f0b454026754293e4a64185f7a0ef826f42352439fab9695742621fbe46"
  else
    url "https://github.com/tty-pt/libqdb/releases/download/v0.5.0/libqdb-0.5.0-brew-x86_64.tar.gz"
    sha256 "4bbec0d5c2802ca6300177328b6b8c55ce49c000c2b1aa448f919282b007744e"
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
