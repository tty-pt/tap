class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.3.1/axil-auren-1.3.1-brew-arm64.tar.gz"
    sha256 "f27714602777aaf7a56e5b89d3d8f976fb322b55b131853ee875582d79bb02fd"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.3.1/axil-auren-1.3.1-brew-x86_64.tar.gz"
    sha256 "5eac4339a3443550877f0d99189ba913676fd7fcc6c5f44e25679c462e215875"
  end
  version "1.3.1"
  depends_on "axil"
  depends_on "libxylem"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "cmake"
  depends_on "libomp"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
