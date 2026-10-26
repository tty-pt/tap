class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.0/axil-auth-1.3.0-brew-arm64.tar.gz"
    sha256 "5847f90e97f467ce4afc9ee5b1aa919bd7618bd2c01975d58cacc2068c147374"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.0/axil-auth-1.3.0-brew-x86_64.tar.gz"
    sha256 "0fa1477a5e8311b38fcff59bd809f8ab29d0c45985a995943c0093386fbe5aee"
  end
  version "1.3.0"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
