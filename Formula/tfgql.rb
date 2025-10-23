class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.6/tfgql-darwin-arm64.tar.gz"
      sha256 "88d67f8851157fe5e25e3b2126bd52e47c385a15d06c22f7092ed07f9252ca6a"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
        system "codesign", "--force", "--sign", "-", bin/"tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.6/tfgql-darwin-x64.tar.gz"
      sha256 "b82353922ff1477de4211bb2c0fe35ce4c5f5edc50f7686eede9672378cab923"

      def install
        bin.install "tfgql-darwin-x64" => "tfgql"
        system "codesign", "--force", "--sign", "-", bin/"tfgql"
      end
    end
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/tfgql --help", 1)
  end
end
