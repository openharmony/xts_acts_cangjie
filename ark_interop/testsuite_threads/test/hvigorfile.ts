import { appTasks, OhosPluginId} from '@ohos/hvigor-ohos-plugin';
import { hvigor } from '@ohos/hvigor';

const artifactName = 'cjTestthreads'

hvigor.afterNodeEvaluate((hvigorNode)=>{
	const context = hvigorNode.getContext(OhosPluginId.OHOS_HAP_PLUGIN)
	if (context && context.getBuildProfileOpt) {
		const buildProfile = context.getBuildProfileOpt();
		const targets = buildProfile.targets
		for (const target of targets) {
			target['output'] = {
				"artifactName": artifactName
			}
		}
		context.setBuildProfileOpt(buildProfile);
	}
})

export default {
	  system: appTasks, /* Built-in plugin of Hvigor. It cannot be modified. */
	  plugins: []       /* Custom plugin to extend the functionality of Hvigor. */
}