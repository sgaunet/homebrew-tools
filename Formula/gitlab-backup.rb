# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabBackup < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.0.0/gitlab-backup_1.0.0_darwin_amd64"
      sha256 "6a4524684c98bb2094f3b83fe6afeda0ea3fe67627b18c0d57f50d514fbe1ad6"

      def install
        bin.install "gitlab-backup_1.0.0_darwin_amd64" => "gitlab-backup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.0.0/gitlab-backup_1.0.0_darwin_arm64"
      sha256 "b0b476d28686142dce99688489d334fcc16a3755d3bdd3752c07a2d2fbfe467b"

      def install
        bin.install "gitlab-backup_1.0.0_darwin_arm64" => "gitlab-backup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.0.0/gitlab-backup_1.0.0_linux_amd64"
      sha256 "c58ad0279a139af7a8bcf5c009f57479d2e67d6d53a91cae540dd0bae8db0ef0"

      def install
        bin.install "gitlab-backup_1.0.0_linux_amd64" => "gitlab-backup"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.0.0/gitlab-backup_1.0.0_linux_armv6"
      sha256 "3e19d9f49f5dfa6c6fc855d5d1d20bdba71a6d8cdb0fe43dc09981b6f3bcddf4"

      def install
        bin.install "gitlab-backup_1.0.0_linux_armv6" => "gitlab-backup"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.0.0/gitlab-backup_1.0.0_linux_arm64"
      sha256 "3f73177c3f792de0026c08978aecbf06078acf470cebb0ac0d22305b8c8f0d13"

      def install
        bin.install "gitlab-backup_1.0.0_linux_arm64" => "gitlab-backup"
      end
    end
  end
end
