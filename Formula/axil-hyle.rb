class AxilHyle < Formula
  desc "axil-hyle binary package"
  homepage "https://github.com/tty-pt/axil-hyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.0.2/axil-hyle-1.0.2-brew-arm64.tar.gz"
    sha256 "92f06339f1bec054b887c68cc367d4c5bae54ad59366ebd691c365db99f3173b"
  else
    url "https://github.com/tty-pt/axil-hyle/releases/download/v1.0.2/axil-hyle-1.0.2-brew-x86_64.tar.gz"
    sha256 "912d847dabf81d01b1073f525ed5fa13e3af14942e14ca37689ad075a5f4fde7"
  end
  version "1.0.2"
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
