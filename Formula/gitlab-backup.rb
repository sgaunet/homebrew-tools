# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabBackup < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.4.0"

  on_macos do
    on_intel do
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.4.0/gitlab-backup_1.4.0_darwin_amd64"
      sha256 "3baf2e609aa94f4a4501dc494d6e12f9f6706e82e7cf3e964a99262132a07518"

      def install
        bin.install "gitlab-backup_1.4.0_darwin_amd64" => "gitlab-backup"
      end
    end
    on_arm do
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.4.0/gitlab-backup_1.4.0_darwin_arm64"
      sha256 "114dfd5db3a7ba79dbab114e310ec16b7fc27e8acbd0d8daad5908e7aa540201"

      def install
        bin.install "gitlab-backup_1.4.0_darwin_arm64" => "gitlab-backup"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.4.0/gitlab-backup_1.4.0_linux_amd64"
        sha256 "cc9401e8c98d024002ce5735a6c67d0433e6d15bc0e7263537c1c74d604f78b2"

        def install
          bin.install "gitlab-backup_1.4.0_linux_amd64" => "gitlab-backup"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.4.0/gitlab-backup_1.4.0_linux_armv6"
        sha256 "f50e3f0282cd598cbbf426e2acc6fec15dbfbe765d04bdb9a8bed669692053ee"

        def install
          bin.install "gitlab-backup_1.4.0_linux_armv6" => "gitlab-backup"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.4.0/gitlab-backup_1.4.0_linux_arm64"
        sha256 "a573064a615ca460d7ebb12ce7a514a25344046fde605c628ed1eb525eeb7019"

        def install
          bin.install "gitlab-backup_1.4.0_linux_arm64" => "gitlab-backup"
        end
      end
    end
  end
end
