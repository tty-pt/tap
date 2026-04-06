class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v0.1.2/libqgl-0.1.2-brew-arm64.tar.gz"
    sha256 "a6bfbde5dc8028dbf630764418a4ff56caef21087bc1f7b2fb09e1c549987b7e"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v0.1.2/libqgl-0.1.2-brew-x86_64.tar.gz"
    sha256 "db5fa6c59051e074f95d12436473d4c1426996468ba343c22eb3734448ca712f"
  end
  version "0.1.2"
  depends_on "libqmap"
  depends_on "glfw"
  depends_on "libpng"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
