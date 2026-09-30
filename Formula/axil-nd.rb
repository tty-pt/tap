class AxilNd < Formula
  desc "axil-nd binary package"
  homepage "https://github.com/tty-pt/axil-nd"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.0.0/axil-nd-1.0.0-brew-arm64.tar.gz"
    sha256 "fa44e66e778a3bdbc58ee775d2f23c5d50c1673690164d179a68207bfeacd39c"
  else
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.0.0/axil-nd-1.0.0-brew-x86_64.tar.gz"
    sha256 "a591a6887ef9b64d331ad1e2c54193e32cf0dda0e718b1219ffd742c6b960d75"
  end
  version "1.0.0"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "libislet"
  depends_on "libqsys"
  depends_on "axil-tty"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
