# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabBackup < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.2.0/gitlab-backup_1.2.0_darwin_amd64"
      sha256 "422709f043f85fc86c466e4407a6e638abbacd3b2372f8757e6bcdd42d3a0296"

      def install
        bin.install "gitlab-backup_1.2.0_darwin_amd64" => "gitlab-backup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.2.0/gitlab-backup_1.2.0_darwin_arm64"
      sha256 "6dbeb17b5ceb9b173c353948be5fae96982bda8bd950760fe93ae31720d1ca46"

      def install
        bin.install "gitlab-backup_1.2.0_darwin_arm64" => "gitlab-backup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.2.0/gitlab-backup_1.2.0_linux_amd64"
      sha256 "4b90363bf4cd133500ea85aeb18ddde6f6e43b069bfea2ecd15ef9f577bc4433"

      def install
        bin.install "gitlab-backup_1.2.0_linux_amd64" => "gitlab-backup"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.2.0/gitlab-backup_1.2.0_linux_arm64"
      sha256 "08356282f21cf597e33b8b297e9b3464abf0f78771effa3c04ca29919a7890c6"

      def install
        bin.install "gitlab-backup_1.2.0_linux_arm64" => "gitlab-backup"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.2.0/gitlab-backup_1.2.0_linux_armv6"
      sha256 "673b837297f2b92e4b40d67a325a175e7eb0f7c8c941cc7e28d27fb0092baf9c"

      def install
        bin.install "gitlab-backup_1.2.0_linux_armv6" => "gitlab-backup"
      end
    end
  end
end
