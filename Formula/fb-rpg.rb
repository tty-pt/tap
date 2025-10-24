class Fb-rpg < Formula
  desc "fb-rpg binary package"
  homepage "https://github.com/tty-pt/fb-rpg"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.2/fb-rpg-0.0.2-brew-arm64.tar.gz"
    sha256 "ed4eab5cb5929520c1116d4c4fa38fd77d6d152fda9451ff5538de79d258506d"
  else
    url "https://github.com/tty-pt/fb-rpg/releases/download/v0.0.2/fb-rpg-0.0.2-brew-x86_64.tar.gz"
    sha256 "6e3b50da64c82b356a011797f2915c59e44b2943fa2ce7620740f0824ce67e3f"
  end
  version "0.0.2"
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
