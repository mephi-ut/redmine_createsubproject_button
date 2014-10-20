module RedmineCreateSubProjectButton
	module Patches
		module ProjectsControllerPatch
			def self.included(base)
				base.class_eval do
					unloadable

					def new_with_create_subproject_button
						Rails.logger.info('TEST:')
						new_without_create_subproject_button
						if params[:parent_id].nil? && !params[:id].nil?
							params[:parent_id] = params[:id]
						end
					end
					alias_method_chain :new, :create_subproject_button
				end
			end
			module InstanceMethods
			end
		end
	end
end

ProjectsController.send(:include, RedmineCreateSubProjectButton::Patches::ProjectsControllerPatch)
