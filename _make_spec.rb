#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-


require 'pathname'

#$_is_verbose = FALSE  # 打印subspec细节的开关
def p_log(text)
    if $_is_verbose
        puts text
    end
end

def get_dir_info(dir_path)
    file_path_list = []
    dir_path_list = []
    Pathname.new(dir_path).each_child do |tmp_path_obj|
        if tmp_path_obj.basename.to_s.start_with?(".")
            next
        end
        if tmp_path_obj.file?
            file_path_list.push(tmp_path_obj.to_s)
        end
        if tmp_path_obj.directory?
            dir_path_list.push(tmp_path_obj.to_s)
        end
    end
    [file_path_list, dir_path_list]
end

def traverse(root_spec, dir_path, spec_path, current_depth=1, max_depth=10)
    path_obj = Pathname.new(dir_path)

    unless path_obj.directory?
        return
    end
    if path_obj.children.length <= 0
        return
    end

    sub_module_name = path_obj.basename.to_s
    next_depth = current_depth + 1
    root_spec.subspec sub_module_name do |sub_spec|
        p_log "#{' ' * (current_depth * 2)}#{'s'*current_depth}.subspec '#{sub_module_name}' do |#{'s'*(next_depth)}|"
        if current_depth >= max_depth
            sub_spec.source_files = File.join(spec_path, "**/*")
            next
        end

        file_path_list, dir_path_list = get_dir_info(dir_path)
        if file_path_list.length > 0
            sub_spec.source_files = File.join(spec_path, "*.{h,m,pch}")
            p_log "#{' ' * (next_depth * 2)}#{'s'*next_depth}.source_files = '#{File.join(spec_path, "*.*")}'"
        end

        dir_path_list.each do |sub_path|
            sub_path_obj = Pathname.new(sub_path)
            if sub_path_obj.children.length <= 0
                next
            end
            sub_spec_path = File.join(spec_path, sub_path_obj.basename.to_s)
            traverse(sub_spec, sub_path_obj.to_s, sub_spec_path, next_depth, max_depth)
        end
        p_log "#{' ' * (current_depth * 2)}end"
    end
end

module_function :traverse
module_function :get_dir_info
module_function :p_log
