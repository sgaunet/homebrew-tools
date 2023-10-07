# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gocrypt < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gocrypt/releases/download/v1.0.1/gocrypt_1.0.1_darwin_amd64"
      sha256 "48b8b36940a96a68acd7d12e63e37d2ce2bad9935ca41e395f445678c09f392a"

      def install
        bin.install "gocrypt"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/gocrypt/releases/download/v1.0.1/gocrypt_1.0.1_darwin_arm64"
      sha256 "3c0581ae425365f77afe445df1713ed2bb205dfdb3371e945fb63ca2feea73da"

      def install
        bin.install "gocrypt"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gocrypt/releases/download/v1.0.1/gocrypt_1.0.1_linux_armv6"
      sha256 "59c208afdc90f47cc296af6548c97f58f8892e01b60e2662a34fe82f7d88f59c"

      def install
        bin.install "gocrypt"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gocrypt/releases/download/v1.0.1/gocrypt_1.0.1_linux_amd64"
      sha256 "01570cd5e543a2bb75cdd4ee8a78d23d601c5d51b65f37210a6eaa8275cf5f26"

      def install
        bin.install "gocrypt"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gocrypt/releases/download/v1.0.1/gocrypt_1.0.1_linux_arm64"
      sha256 "1ec3ae4ce0f11fe92882deddb9326344b1f102893920b795af8bb47e2353b1c0"

      def install
        bin.install "gocrypt"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
  end
end
