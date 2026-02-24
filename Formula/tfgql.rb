class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.0/tfgql-darwin-arm64.tar.gz"
      sha256 "910f4f8ba8cb61415e85a48b6c2ff10f5a9a79e9cc5f9e37df7b514cc603722e"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.0/tfgql-darwin-x64.tar.gz"
      sha256 "0c5c42e154a9f8b2ea8810d1234d18af587fab3a7206b59dbe2512df6d900838"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
