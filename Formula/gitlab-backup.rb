# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabBackup < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.9.0/gitlab-backup_1.9.0_darwin_amd64"
      sha256 "66cd8658a4478da5c358d1f96ee03a17237d1f179cd8b98105b0336e2524f079"

      def install
        bin.install "gitlab-backup_1.9.0_darwin_amd64" => "gitlab-backup"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.9.0/gitlab-backup_1.9.0_darwin_arm64"
      sha256 "225ce4e946d6b954b654c2722d2e8ebfa6b67da780d8fb05507b2edccb32adcf"

      def install
        bin.install "gitlab-backup_1.9.0_darwin_arm64" => "gitlab-backup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.9.0/gitlab-backup_1.9.0_linux_amd64"
        sha256 "a941b1c2d494778d97bd76af1cd0cdcf319821a83fb99262559c25d58065de2f"

        def install
          bin.install "gitlab-backup_1.9.0_linux_amd64" => "gitlab-backup"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.9.0/gitlab-backup_1.9.0_linux_armv6"
        sha256 "3ed8dce2507b1adc9252ac342d960359e068564adc09be139f2448c314d4d86d"

        def install
          bin.install "gitlab-backup_1.9.0_linux_armv6" => "gitlab-backup"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gitlab-backup/releases/download/v1.9.0/gitlab-backup_1.9.0_linux_arm64"
        sha256 "6a9d80099e33d01219c278b5836eee1d3deb676cc2377c8292276307612f958d"

        def install
          bin.install "gitlab-backup_1.9.0_linux_arm64" => "gitlab-backup"
        end
      end
    end
  end
end
