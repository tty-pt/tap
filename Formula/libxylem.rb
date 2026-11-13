class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.8.0/libxylem-1.8.0-brew-arm64.tar.gz"
    sha256 "1157f8342a3d052e5ae65b2eb9da25be34744d94164a066e0c59ab01a39aeb55"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.8.0/libxylem-1.8.0-brew-x86_64.tar.gz"
    sha256 "f0e32bdf719d2e95a823616828d2fc4f5cd3a06c4d16e7920faa18c690820bad"
  end
  version "1.8.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
