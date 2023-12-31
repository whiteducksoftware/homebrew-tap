# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azctx < Formula
  desc "Faster switching between Azure Subscriptions in your Azure CLI"
  homepage "https://github.com/whiteducksoftware/azctx"
  version "2023.11.1"
  license "MIT"

  depends_on "azure-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2023.11.1/azctx_darwin_arm64.zip"
      sha256 "61027f509d7e79fcb1c713ccff2ff5524bd98decbdff38a2d3f97295d4ff6bfd"

      def install
        bin.install "azctx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2023.11.1/azctx_darwin_amd64.zip"
      sha256 "2343482bc076b3f77bc774fefe64354babb850ee376b9c80fef3c45043a3cdb2"

      def install
        bin.install "azctx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2023.11.1/azctx_linux_armv6.zip"
      sha256 "617177834c504c18617719db82da165bf79c682ad9ae7f6a52bd43a6740acb47"

      def install
        bin.install "azctx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2023.11.1/azctx_linux_amd64.zip"
      sha256 "5128a9d4bd559d7ce6e489ab3f541dfb76260b1f06319219fec932aaa643f7bb"

      def install
        bin.install "azctx"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2023.11.1/azctx_linux_arm64.zip"
      sha256 "aeb6bac40b87c5d3485cfaa4f7d1a83105905ba30ea72d49f831d0c12a8b7257"

      def install
        bin.install "azctx"
      end
    end
  end
end
