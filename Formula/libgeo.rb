class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-macos-arm64.tar.gz"
    sha256 "c981dbfa5f1dcc786e9a507ee44154a9d3257d401c6153cb08d776dd5faf2dcf"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-macos-x86_64.tar.gz"
    sha256 "75f45db1ebb83d9f09f60c04e3cca5338ae075474f9809264d83479302d552a6"
  end
  version "0.0.5"
  depends_on "libqdb"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
