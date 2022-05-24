# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Art < Formula
  desc "Argonaut makes DevOps Simple"
  homepage "https://argonaut.dev/"
  version "0.7.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argonautdev/public/releases/download/v0.7.5/art_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "005c253b209043defa21c01eeef878ab42864b343d0c2408a925a8efcf9b5f75"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/argonautdev/public/releases/download/v0.7.5/art_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "3d71fa3cfb0a929b7055ce48cadbab500d39471182d4037ef8e9ee934c53f0f8"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/argonautdev/public/releases/download/v0.7.5/art_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "bf295d2977d84fbffc7c959cbcf3735813549358407207e0c5a39e6ad17e23a7"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/argonautdev/public/releases/download/v0.7.5/art_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "21f7fecc717885bded5330b3dc71aaeeb221233fdabd4fca7b58a7f592aa846d"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
  end

  test do
    system "#{bin}/art -v"
  end
end
