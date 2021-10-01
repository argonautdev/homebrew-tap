# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Art < Formula
  desc "Argonaut makes DevOps Simple"
  homepage "https://argonaut.dev/"
  version "0.4.1-beta7"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/argonautdev/public/releases/download/v0.4.1-beta7/art_0.4.1-beta7_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "eecdbcb9b0ad300c40cf796476c71a23b993cb636a70c1d94d3f2e66e07812c1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/argonautdev/public/releases/download/v0.4.1-beta7/art_0.4.1-beta7_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c54bf65b7e883ac59a79925e916ff918da097d5392030f71661794ffc05cacc4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/argonautdev/public/releases/download/v0.4.1-beta7/art_0.4.1-beta7_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "81703067afe319544cd8d09f011b68c2162ba9b316221f454c9076df227c4fa7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/argonautdev/public/releases/download/v0.4.1-beta7/art_0.4.1-beta7_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6d1d695f7409a9d17f0173ab1f133579b97ea9592dd6dda5117f72341ae64826"
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  def install
    bin.install "art"
    bash_completion.install "completions/art.bash" => "art"
    zsh_completion.install "completions/art.zsh" => "_art"
    fish_completion.install "completions/art.fish"
  end

  test do
    system "#{bin}/art -v"
  end
end
