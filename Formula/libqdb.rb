class Libqdb < Formula
  desc "libqdb binary package"
  homepage "https://github.com/tty-pt/libqdb"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqdb/releases/download/v0.4.1/libqdb-0.4.1-macos-arm64.tar.gz"
    sha256 "0972768c86f815e1860c00e8729c867707f075cdb49b132f0a8682fc6a7af794"
  else
    url "https://github.com/tty-pt/libqdb/releases/download/v0.4.1/libqdb-0.4.1-macos-x86_64.tar.gz"
    sha256 "157235a75c32756638d9f3b8baa08cf192621f539926862ee2b3d57752a14946"
  end
  version "0.4.1"
  depends_on "libqmap"
  depends_on "db"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
