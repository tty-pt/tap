class AxilHyle < Formula
  desc "axil-hyle binary package"
  homepage "https://github.com/tty-pt/axil-hyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.0.0/axil-hyle-1.0.0-brew-arm64.tar.gz"
    sha256 "869fe0969487a27a6adc32b781cce3731f397338457cf5439e79c740693e65ee"
  else
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.0.0/axil-hyle-1.0.0-brew-x86_64.tar.gz"
    sha256 "6e691dab63da67c3cf29f7aad3e4256a794ce2faa135464eba9dd42e74079e4f"
  end
  version "1.0.0"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "libhyle"
  depends_on "libhyle-source"
  depends_on "axil-auth"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
