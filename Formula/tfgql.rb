class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.6/tfgql-darwin-arm64.tar.gz"
      sha256 "c79e02ced6a7d7150ece39f99c0d94a3a2e4e679ecefb46ce3abb879e879a306"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.6.6/tfgql-darwin-x64.tar.gz"
      sha256 "db96c8d3e7f6719b3f24b3482223020c12d913dae9d997188411e67a3c86924b"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
