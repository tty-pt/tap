class Fb-rpg < Formula
  desc "fb-rpg binary package"
  homepage "https://github.com/tty-pt/fb-rpg"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/fb-rpg-0.0.1-brew-arm64.tar.gz"
    sha256 "9cf157c6fca20de67d683435dbfe12ac0aa53333b0df0f5806e976721ed74c5e"
  else
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.1/fb-rpg-0.0.1-brew-x86_64.tar.gz"
    sha256 "21423c280f04c8a6d6bec2412bf5cbe1e280314fc6d7b9647dfea1809b8ff842"
  end
  version "0.0.1"
  depends_on "libgeo"
  depends_on "glfw"
  depends_on "libpng"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
