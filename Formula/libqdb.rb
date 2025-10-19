class Libqdb < Formula
  desc "libqdb binary package"
  homepage "https://github.com/tty-pt/libqdb"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqdb/releases/download/v0.5.0/libqdb-0.5.0-brew-arm64.tar.gz"
    sha256 "4a23deae9104f80f64bfe161dea1ab937f7e67e45d7d5199727b701d1e7ad3be"
  else
    url "https://github.com/tty-pt/libqdb/releases/download/v0.5.0/libqdb-0.5.0-brew-x86_64.tar.gz"
    sha256 "9009a1c74dc15cf07f581fd990bee621b826eb04b5211bf50af83b161d3f4463"
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
