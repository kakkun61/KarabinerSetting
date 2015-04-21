#!/usr/bin/env ruby

$work_dir = File.expand_path(File.dirname(__FILE__))

def mkdir(dir)
    Dir.mkdir(dir) unless Dir.exists?(dir)
end

def karabiner_backup_sh
    karabiner = '/Applications/Karabiner.app/Contents/Library/bin/karabiner'

    selected = `#{karabiner} selected`

    list = []
    `#{karabiner} list`.lines { |line|
        item = line.split(': ', 2)
        list[item[0].to_i] = item[1].chomp
    }

    mkdir("#{$work_dir}/sh")
    list.each_with_index { |name, i|
        `#{karabiner} select #{i}`
        `#{karabiner} export > "#{$work_dir}/sh/#{name.gsub(' ', '-')}.sh"`
    }

    `#{karabiner} select #{selected}`
end

def karabiner_backup_xml
    mkdir("#{$work_dir}/xml")
    `cp "$HOME/Library/Application Support/Karabiner/private.xml" "#{$work_dir}/xml/"`
end

def karabiner_backup_plist
    mkdir("#{$work_dir}/plist")
    Dir.glob("#{ENV['HOME']}/Library/Preferences/org.pqrs.Karabiner*.plist").each { |file|
        `cp "#{file}" "#{$work_dir}/plist/"`
    }
end

def seil_backup_sh
    seil = '/Applications/Seil.app/Contents/Library/bin/seil'

    mkdir("#{$work_dir}/sh")
    `#{seil} export > "#{$work_dir}/sh/seil.sh"`
end


def karabiner_backup_plist
    mkdir("#{$work_dir}/plist")
    `cp "#{ENV['HOME']}/Library/Preferences/org.pqrs.Seil.plist" "#{$work_dir}/plist/"`
end

karabiner_backup_sh
karabiner_backup_xml
karabiner_backup_plist

seil_backup_sh
karabiner_backup_plist
