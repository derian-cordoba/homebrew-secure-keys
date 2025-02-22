class SecureKeys < Formula
  desc 'Secure Keys is a simple tool to manage your secret keys in your iOS project'.freeze
  homepage 'https://github.com/derian-cordoba/secure-keys'.freeze
  url 'https://github.com/derian-cordoba/secure-keys/archive/refs/tags/v1.1.2.tar.gz'.freeze
  sha256 '2d1149e0baaf717d090868cbff9ffac806bffbb27ecb0e9495383d12e3984963'.freeze
  license 'MIT'.freeze

  depends_on 'ruby@3.3'
  depends_on macos: :sonoma

  def install
    ENV['GEM_HOME'] = libexec
    ENV['GEM_PATH'] = libexec

    system 'gem', 'install', 'secure-keys', '-v', '1.1.2'

    (bin / 'secure-keys').write_env_script libexec / 'bin/secure-keys',
                                           PATH: "#{Formula['ruby@3.3'].opt_bin}:#{libexec}/bin:$PATH",
                                           GEM_HOME: libexec.to_s,
                                           GEM_PATH: libexec.to_s
  end

  test do
    system 'which', 'secure-keys'
    system 'secure-keys', '--help'
    system 'secure-keys', '--version'
  end
end
