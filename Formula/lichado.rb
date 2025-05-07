class Lichado < Formula
  desc "Tool to check whether an Azure DevOps License should be updated"
  homepage "https://github.com/whiteducksoftware/azure-devops-license-checker"
  version "v1.0.0"
  license "MIT"
  
  # Define all platform-specific URLs and SHA256 checksums
  if Hardware::CPU.intel?
    url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-osx-x64.tar.gz"
    sha256 "373827a93e767b0eccecaa3f5087164d9bbd6d00dc258b6c268c4424e4fbdab4"
  elsif Hardware::CPU.arm?
    url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-osx-arm64.tar.gz"
    sha256 "4360bad1fdc05cf482be2c6e9fcbde1c1357798540d4dd4bdf92c1b6cc2c3162"
  end

  # Linux (assuming x64)
  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-linux-x64.tar.gz"
      sha256 "b917ae85469fd133435ed3950c697b1c043a767902bb33a0c5b4ee72ab07a991"
    elsif Hardware::CPU.arm?
      url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-linux-arm64.tar.gz"
      sha256 "e80d533d41bb3a8b00379050a072b7c96f2fb4c6cb0fd394e075044885723ef6"
    end
  end

  def install
    # Installation commands depending on platform
    bin.install "lichado"
  end
end
