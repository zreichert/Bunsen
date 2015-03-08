Puppet::Type.newtype(:pipeline) do
  @doc = 'Type representing a Beaker CI pipeline.'

  newproperty(:ensure) do

    newvalue(:present) do
      provider.create
    end

    newvalue(:absent) do
      provider.destroy
    end

  end

  newproperty(:jobs) do
    desc 'The ordered jobs in the pipeline'

  end

  newproperty(:build_failure) do
    desc 'The action to take when any build job fails'

  end

  newproperty(:test_failure) do
    desc 'The action to take when any test job fails'

  end

  newproperty(:compose_failure) do
    desc 'The action to take when any compose job fails'

  end

  newproperty(:promote_failure) do
    desc 'The action to take when any promote job fails'

  end

  newproperty(:general_failure) do
    desc 'The action to take on any job failure'

  end

  newproperty(:specified_failure) do
    desc 'The actions to take on a specific job failures'

  end

end
