# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabBackup < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.8.0/gitlab-backup_1.8.0_darwin_amd64"
      sha256 "77d0ee34b045d494518700861d2084c1e4258363975cda3811891dbb310713f5"

      def install
        bin.install "gitlab-backup_1.8.0_darwin_amd64" => "gitlab-backup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.8.0/gitlab-backup_1.8.0_darwin_arm64"
      sha256 "2462e401567f9dca6f36cbf87a9d7ce4e964354228c08ef7cf2c8c7d766dc1eb"

      def install
        bin.install "gitlab-backup_1.8.0_darwin_arm64" => "gitlab-backup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.8.0/gitlab-backup_1.8.0_linux_amd64"
        sha256 "72d50cc450a57065f93ee42496a51f5d979d669fc208dbe37972963d85ae7f71"

        def install
          bin.install "gitlab-backup_1.8.0_linux_amd64" => "gitlab-backup"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.8.0/gitlab-backup_1.8.0_linux_armv6"
        sha256 "f148aba8f88996c89061673973fc526a3e1fd37374eab2f8b0b8a6a93edd73a1"

        def install
          bin.install "gitlab-backup_1.8.0_linux_armv6" => "gitlab-backup"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.8.0/gitlab-backup_1.8.0_linux_arm64"
        sha256 "831342de4e7bb58989707de019e5dbcab58a4f9ae6284c142c4fa17568e5476a"

        def install
          bin.install "gitlab-backup_1.8.0_linux_arm64" => "gitlab-backup"
        end
      end
    end
  end
end
