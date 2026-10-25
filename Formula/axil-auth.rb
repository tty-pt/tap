class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.2.1/axil-auth-1.2.1-brew-arm64.tar.gz"
    sha256 "8ef53211f9cbb311662d6917163f629f285c9391a3d8e5461ae6f06fa31f8124"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.2.1/axil-auth-1.2.1-brew-x86_64.tar.gz"
    sha256 "40c30caee56d8177e4e6e44a2aa5771c13063117e8ee74c1b20c71f38a4158e9"
  end
  version "1.2.1"
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
