class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.4/tfgql-darwin-arm64.tar.gz"
      sha256 "24ecad25913c4b5dd476a122e1d51cc53187682eb64902fc1adb6b2d672dcebe"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.4/tfgql-darwin-x64.tar.gz"
      sha256 "537c1b051341a1745d6a32cd11ab8300ed72a4dadb2e2156983d9b5f72a6c837"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
