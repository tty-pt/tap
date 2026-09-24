class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.0/libxylem-1.4.0-brew-arm64.tar.gz"
    sha256 "cac40e5dc005d274f07918f68095b679bffe83acfe50763319252fba1b93ba35"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.0/libxylem-1.4.0-brew-x86_64.tar.gz"
    sha256 "faecbd4e06971f61349824c4f6167647b8aef0e8d45fc97c24fc4180be731f3a"
  end
  version "1.4.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
