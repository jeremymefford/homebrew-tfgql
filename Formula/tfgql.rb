class Tfgql < Formula
  desc "GraphQL facade for Terraform Cloud / Enterprise"
  homepage "https://github.com/jeremymefford/tfgql"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.7/tfgql-darwin-arm64.tar.gz"
      sha256 "3e28b4b8f2bd226203a9a6ef46628676da6ad92f71429d25045cfdeb99082547"

      def install
        bin.install "tfgql-darwin-arm64" => "tfgql"
        system "codesign", "--force", "--sign", "-", bin/"tfgql"
      end
    end

    on_intel do
      url "https://github.com/jeremymefford/tfgql/releases/download/v0.5.7/tfgql-darwin-x64.tar.gz"
      sha256 "989456d974580a8275e22f94d12771778191dc39a94b91313894f3530b047371"

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
