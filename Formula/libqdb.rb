class Libqdb < Formula
  desc "libqdb binary package"
  homepage "https://github.com/tty-pt/libqdb"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqdb/releases/download/v0.5.0/libqdb-0.5.0-brew-arm64.tar.gz"
    sha256 "07e7bda18e053517a43941f6bddaf53d8a8b900dbc3e4096a83a33a25af9e9f4"
  else
    url "https://github.com/tty-pt/libqdb/releases/download/v0.5.0/libqdb-0.5.0-brew-x86_64.tar.gz"
    sha256 "caba3a39e895e722fd8d8a73b99ca5c2da6f5ab6f522a7da361b213b7ac6bbcc"
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
