class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11.tar.gz"
  sha256 "5759862b17af65fa88f98e8504a3f886db12686600108997f7013dd296abe49a"
  version "0.0.11"

  def install
    include.install Dir["include/*.h"] if Dir.exist?("include")
    lib.install Dir["lib/*"] if Dir.exist?("lib")
    bin.install Dir["bin/*"] if Dir.exist?("bin")
  end

  test do
    system "true"
  end
end
