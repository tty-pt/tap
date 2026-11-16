class AxilHyle < Formula
  desc "axil-hyle binary package"
  homepage "https://github.com/tty-pt/axil-hyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.1.4/axil-hyle-1.1.4-brew-arm64.tar.gz"
    sha256 "a640783f84551ffb7f0ef95f058c1c54d65bde5db71919ca6dad65f337ad3762"
  else
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.1.4/axil-hyle-1.1.4-brew-x86_64.tar.gz"
    sha256 "ae75d57f0770dbeca669fe61785f1be5280a3a4b5c70f6e3a56f5dcc4c49b1ab"
  end
  version "1.1.4"
  depends_on "axil"
  depends_on "libstele"
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
