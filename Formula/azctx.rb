# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azctx < Formula
  desc "Faster switching between Azure Subscriptions in your Azure CLI"
  homepage "https://github.com/whiteducksoftware/azctx"
  version "2024.12.3"
  license "MIT"

  depends_on "azure-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2024.12.3/azctx_Darwin_x86_64.tar.gz"
      sha256 "dcdc71f3c0804722a16c55d2780a3d773a0cc3c00d9f32888ceafbbd1fefccff"

      def install
        bin.install "azctx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2024.12.3/azctx_Darwin_arm64.tar.gz"
      sha256 "bdef33d0dbfe174420c8ba08e713fa29196f8f940e3e940e3bcc52ca95bf03fe"

      def install
        bin.install "azctx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/whiteducksoftware/azctx/releases/download/2024.12.3/azctx_Linux_x86_64.tar.gz"
        sha256 "67ee6d5ce06ed56c5fcee417e9fa90c690b8a74695084fd9b6fa096677e52186"

        def install
          bin.install "azctx"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/whiteducksoftware/azctx/releases/download/2024.12.3/azctx_Linux_armv6.tar.gz"
        sha256 "cd9acd917bb4c6fbda8ac8da1186faf9473620f0ef7724e3529f552dc20d510c"

        def install
          bin.install "azctx"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/whiteducksoftware/azctx/releases/download/2024.12.3/azctx_Linux_arm64.tar.gz"
        sha256 "9aa554e438d1f7dd99516ef64a8e5c6b8f5394a9ce263a05c60603ddb44b61fd"

        def install
          bin.install "azctx"
        end
      end
    end
  end
end
