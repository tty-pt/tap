class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/libqllm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqllm/releases/download/v1.1.0/libqllm-1.1.0-brew-arm64.tar.gz"
    sha256 "bbd7f11a1f03bcb09ccb652bb6a10e30b1418d7ace286aa37d578b5c69ef7760"
  else
    url "https://github.com/tty-pt/libqllm/releases/download/v1.1.0/libqllm-1.1.0-brew-x86_64.tar.gz"
    sha256 "7eff22efba7a4810330a0b3ecbde43f05b8f9bd87afee8397d6a6b59071a2764"
  end
  version "1.1.0"
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
