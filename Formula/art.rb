# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Art < Formula
  desc "Argonaut makes DevOps Simple"
  homepage "https://argonaut.dev/"
  version "0.10.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/argonautdev/public/releases/download/v0.10.8/art_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "e418d449af9fd9abb99e81cee49f19693ebe2dfeea06ac3dc4b25abdeedc64b2"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/argonautdev/public/releases/download/v0.10.8/art_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "b1b39015e341e0a0b23f1caac13ba7abd11754ebdfa5991858825cf5b3f8aae9"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/argonautdev/public/releases/download/v0.10.8/art_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6f98732a4f94afffcef4ab3b95c1bc3c95ace7278345c1ffd3459f64241ffce6"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/argonautdev/public/releases/download/v0.10.8/art_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "9e4724bfaf0f14f799933aeb8c89e9c908bc94bf092f80d25b7d58219a8415df"

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
