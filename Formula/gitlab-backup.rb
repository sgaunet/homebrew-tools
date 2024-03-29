# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabBackup < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.3.0/gitlab-backup_1.3.0_darwin_amd64"
      sha256 "c432c8f023c49e82fa3dc5fb57f6da779efdb13b3370aaf163f79bd1995e2861"

      def install
        bin.install "gitlab-backup_1.3.0_darwin_amd64" => "gitlab-backup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.3.0/gitlab-backup_1.3.0_darwin_arm64"
      sha256 "1bfbc0efc46aafdc56fc4719cb4bb5a578e90ac7b69d3d7af227d245a444c1a1"

      def install
        bin.install "gitlab-backup_1.3.0_darwin_arm64" => "gitlab-backup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.3.0/gitlab-backup_1.3.0_linux_arm64"
      sha256 "9e9330b2cf67c46ad8791e158c957374a2ec13507def7167ea92bdde581f38e7"

      def install
        bin.install "gitlab-backup_1.3.0_linux_arm64" => "gitlab-backup"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.3.0/gitlab-backup_1.3.0_linux_amd64"
      sha256 "b8c1dc6aa0c75114358f51aad70445bd0a418def95efdde9867cbbe2be1a1749"

      def install
        bin.install "gitlab-backup_1.3.0_linux_amd64" => "gitlab-backup"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.3.0/gitlab-backup_1.3.0_linux_armv6"
      sha256 "958fe7dfdfeebabd9edf7b72dd234f996b0a83edea6c24905f9457742be7d054"

      def install
        bin.install "gitlab-backup_1.3.0_linux_armv6" => "gitlab-backup"
      end
    end
  end
end
