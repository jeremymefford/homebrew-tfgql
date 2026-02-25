class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.6.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.7/tfgql-darwin-arm64.tar.gz"
      sha256 "313ad8c9c9fb6d9eb062195d92c06a2505b8c352dfa1e24f8bcc13f9f82a2e0f"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.7/tfgql-darwin-x64.tar.gz"
      sha256 "9eeefed40bae10b5af8485e111276fee0a14976557c022849bb063b90f7976d9"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
