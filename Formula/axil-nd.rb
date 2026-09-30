class AxilNd < Formula
  desc "axil-nd binary package"
  homepage "https://github.com/tty-pt/axil-nd"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.0.0/axil-nd-1.0.0-brew-arm64.tar.gz"
    sha256 "bebb8e91c193dc40edad5fc23118aa386ea0fa1d4596e52b7ef329428e016c04"
  else
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.0.0/axil-nd-1.0.0-brew-x86_64.tar.gz"
    sha256 "1db8ea4b02f4ad40d66697b31c2fc24358f3135fc069e86dc76d53ccc4d2b142"
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
