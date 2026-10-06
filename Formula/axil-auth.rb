class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.2.0/axil-auth-1.2.0-brew-arm64.tar.gz"
    sha256 "fc03a4ae9963b95d62a55c900a0d961bb40b1ccf0109b31ef0090d4958a6a939"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.2.0/axil-auth-1.2.0-brew-x86_64.tar.gz"
    sha256 "a3fcba52e390b853b59a0f52a04804e40e936babd41357e628e81e7a6267b916"
  end
  version "1.2.0"
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
