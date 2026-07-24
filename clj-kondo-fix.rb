class CljKondoFix < Formula
  desc "Auto-fix Clojure code based on clj-kondo findings"
  homepage "https://github.com/sirmspencer/clj-kondo-fix"
  url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.1.0/clj-kondo-fix-0.1.0-standalone.jar"
  sha256 "64fb47a2e5d2b212cd0b88bd06b74ecb6a64c3411b0d18e2ec0d0e4060d1d6d4"
  license "EPL-2.0"
  version "0.1.0"

  depends_on "openjdk"

  def install
    libexec.install "clj-kondo-fix-#{version}-standalone.jar"
    bin.write_jar_script libexec/"clj-kondo-fix-#{version}-standalone.jar", "clj-kondo-fix"
  end

  test do
    system "#{bin}/clj-kondo-fix", "--version"
  end
end
