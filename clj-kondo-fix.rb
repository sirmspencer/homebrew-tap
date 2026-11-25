class CljKondoFix < Formula
  desc "Auto-fix Clojure code based on clj-kondo findings"
  homepage "https://github.com/sirmspencer/clj-kondo-fix"
  version "0.2.1"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.1/clj-kondo-fix-darwin-arm64.tar.gz"
      sha256 "487f8a6425136564a33ce7bfc9ab9543c9f10aa850a19eb87601e2b4e28f1ffd"
    end
    on_intel do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.1/clj-kondo-fix-darwin-amd64.tar.gz"
      sha256 "88d1d569aa6a1e432ad18816b56fa4de27c9c71c9819ce64ce9cdd8a81f6e1e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.1/clj-kondo-fix-linux-arm64.tar.gz"
      sha256 "be78e349bc86cdc35aa2e280bbb7242d09df73034abfc0da704bd56effe3009f"
    end
    on_intel do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.1/clj-kondo-fix-linux-amd64.tar.gz"
      sha256 "b28d699d5495321eb91e2783b0093cfbeb5886a1653f46b06880dc88b413d1e7"
    end
  end

  def install
    bin.install "clj-kondo-fix"
  end

  test do
    assert_match "clj-kondo-fix #{version}", shell_output("#{bin}/clj-kondo-fix --version")
    (testpath/"example.clj").write "(ns example (:require [clojure.string :as s]))\n"
    # exits 1 when it fixes something
    shell_output("#{bin}/clj-kondo-fix --lint #{testpath}/example.clj --fix", 1)
    refute_match "clojure.string", (testpath/"example.clj").read
  end
end
