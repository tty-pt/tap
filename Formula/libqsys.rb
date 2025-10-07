class Ulibqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11.tar.gz"
  sha256 "5a59066361a934c30a4d169367b66634900938fc2af2329a8df1b276e9166bf2"
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
