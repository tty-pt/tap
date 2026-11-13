class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.4.1/libsepal-1.4.1-brew-arm64.tar.gz"
    sha256 "458771d221bab94865fb92d59e202fe325d6431e4ec587c68b2a6f5e6dfe8a48"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.4.1/libsepal-1.4.1-brew-x86_64.tar.gz"
    sha256 "4bb296777d8dae59201ff828bcc174abe858fafc2bb4777de539a98632521e8f"
  end
  version "1.4.1"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
