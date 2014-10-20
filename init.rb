# encoding: UTF-8
require 'redmine'

require_dependency 'redmine_createsubproject_button/patches/project_controllers_patch'

Redmine::Plugin.register :redmine_createsubproject_button do
	name 'Redmine create subproject button on project menu'
	description 'A plugin to add a "subproject create" button in project menu'
	url 'https://github.com/mephi-ut/redmine_createsubproject_button'
	author 'Dmitry Yu Okunev'
	author_url 'https://github.com/xaionaro'
	version '0.0.1'

	menu :project_menu, :subproject_new,	{:controller => 'projects', :action => 'new'},	:last	=> true
end


