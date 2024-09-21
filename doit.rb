class Doit < Formula
  desc "a purposely simple aliasing tool"
  homepage ""
  url "https://github.com/sirmspencer/doit/archive/refs/tags/v0.1.22.tar.gz"
  sha256 "5f5499d1b0987981773a30a89e458936841113c86806c8dace4c2125e09c89a1"
  license "GPL-3.0"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "bb/doit"
  end
end
