# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabBackup < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v0.3.4/gitlab-backup_0.3.4_Darwin_x86_64.tar.gz"
      sha256 "bca53ac9ab8ff091df15bd8aec11211b76f67fa410a85574795478b873e074f3"

      def install
        bin.install "gitlab-backup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v0.3.4/gitlab-backup_0.3.4_Darwin_arm64.tar.gz"
      sha256 "10a02af30f77199d066618757f9fe7dcd86082dddf91e131d06127b2be01f4a9"

      def install
        bin.install "gitlab-backup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v0.3.4/gitlab-backup_0.3.4_Linux_armv6.tar.gz"
      sha256 "184c1e6b93adb8a678ec46bbd0b6599acd8dd5bcba7d2a3acdd804ef16e07606"

      def install
        bin.install "gitlab-backup"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v0.3.4/gitlab-backup_0.3.4_Linux_x86_64.tar.gz"
      sha256 "02c65f072b2a2d531e14a0768c478c1475dadab980bac168bcae4dbcd5777fa1"

      def install
        bin.install "gitlab-backup"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v0.3.4/gitlab-backup_0.3.4_Linux_arm64.tar.gz"
      sha256 "4cba258b8f406fe5f7244e09540766feaf0b39cf1bf332e61a5595404bbdd29c"

      def install
        bin.install "gitlab-backup"
      end
    end
  end
end
