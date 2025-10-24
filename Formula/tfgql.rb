class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.9/tfgql-darwin-arm64.tar.gz"
      sha256 "557165c15e7a18c11f870b351126380187608cb82d6a7f4a088db28d5557964a"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.9/tfgql-darwin-x64.tar.gz"
      sha256 "834e0e939278f3a3c4bedbbfb8dc4ae9ccdda2402d1ce5e0c941f0a956a47314"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
