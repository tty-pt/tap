class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.6.2/libjoint-1.6.2-brew-arm64.tar.gz"
    sha256 "a914f4918780dbc566819b45ad2787ac1ca4f5ca9e247c9bb8e358c004e8c933"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.6.2/libjoint-1.6.2-brew-x86_64.tar.gz"
    sha256 "c1c069408412f2dc458b58c5a3a8c158d60a1be73352b4a7e2a2b73b4dcc892f"
  end
  version "1.6.2"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
