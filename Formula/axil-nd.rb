class AxilNd < Formula
  desc "axil-nd binary package"
  homepage "https://github.com/tty-pt/axil-nd"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.2.0/axil-nd-1.2.0-brew-arm64.tar.gz"
    sha256 "237be504676b06fcfc87769351dfdb8f9f624453bb3baa5d1ac32277730159c1"
  else
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.2.0/axil-nd-1.2.0-brew-x86_64.tar.gz"
    sha256 "690025a36eec310aa45bdbebdb68cc67e715b00a3400e7f0c5fb8a5aff940bfc"
  end
  version "1.2.0"
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
