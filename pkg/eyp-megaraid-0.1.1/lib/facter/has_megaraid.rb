
lspcibin=Facter::Util::Resolution.exec('bash -c \'which lspci 2>/dev/null \'')

if !(lspcibin.nil? or lspcibin.empty?)
  megaraid_ver=Facter::Util::Resolution.exec('bash -c \''+lspcibin+' | grep -Eo "MegaRAID SAS.*"\'')

  Facter.add('eyp_megaraid_has_megaraid') do
    setcode do
      if megaraid_ver.nil? or megaraid_ver.empty?
        false
      else
        true
      end
    end
  end

  unless megaraid_ver.nil? or megaraid_ver.empty?
    Facter.add('eyp_megaraid_megaraid') do
      setcode do
        megaraid_ver
      end
    end
  end

end
