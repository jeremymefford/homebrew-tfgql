class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.5/tfgql-darwin-arm64.tar.gz"
      sha256 "832b7c73aff8e8d991c8bff75d4aaac181b68312d2de6876b4dd15a02d15a969"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.5/tfgql-darwin-x64.tar.gz"
      sha256 "a6eb24885ee33657e6992bdc157cef62da31591a2163fec28de8a8b62ba2dc66"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
