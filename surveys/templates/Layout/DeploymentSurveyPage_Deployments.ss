<h1>OpenStack User Survey: Deployments</h1>

<div class="container">

    <% include DeploymentSurveyPageNavigation %>
    <% require javascript(surveys/js/deployment_survey_deployments_form.js) %>
    <div class="row">
       <form>
            <fieldset class="fake">
            <h2>Deployments</h2>
            <p>
                A deployment profile tracks information about an individual OpenStack deployment.
                <ul>
                <li>An organization may have multiple deployment profiles for each OpenStack deployment they have.</li>
                <li>Once you have created a deployment profile, you can return to the site to update the data in it.</li>
                <li>You will be the default administrator for any deployment profiles you create.</li>
                </ul>
                As always, the information you provide is confidential and will only be presented in aggregate unless you consent to making it public.
            </p>
            <% if DeploymentList %>
                <% loop DeploymentList %>
                    <div class="deployment">
                        <a href="{$Top.Link}DeploymentDetails/?DeploymentID={$ID}" class="deployment-name">$Label</a> &nbsp;
                        [<a href="{$Top.Link}RemoveDeployment/?DeploymentID={$ID}"> Remove </a>]
                    </div>
                <% end_loop %>
                <p></p>

                <p><a class="roundedButton" href="{$Link}AddDeployment">Add Another Deployment</a> &nbsp; <a
                        class="roundedButton" href="{$Link}SkipDeployments">Done</a></p>
            <% else %>
                <p>Click "Get Started" below to add optional details about your OpenStack Deployments.</p>

                <p><a class="blue-button" href="{$Link}AddDeployment">Get Started</a> &nbsp; <a href="{$Link}SkipDeployments">Skip This Step</a></p>
            <% end_if %>

            </fieldset>
        </form>
    </div>
</div>
