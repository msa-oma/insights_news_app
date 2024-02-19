import 'owner.dart';

class Githubmodel {
  int? id;
  String? nodeId;
  String? name;
  String? fullName;
  bool? private;
  Owner? owner;
  String? htmlUrl;
  String? description;
  bool? fork;
  String? url;
  String? forksUrl;
  String? keysUrl;
  String? collaboratorsUrl;
  String? teamsUrl;
  String? hooksUrl;
  String? issueEventsUrl;
  String? eventsUrl;
  String? assigneesUrl;
  String? branchesUrl;
  String? tagsUrl;
  String? blobsUrl;
  String? gitTagsUrl;
  String? gitRefsUrl;
  String? treesUrl;
  String? statusesUrl;
  String? languagesUrl;
  String? stargazersUrl;
  String? contributorsUrl;
  String? subscribersUrl;
  String? subscriptionUrl;
  String? commitsUrl;
  String? gitCommitsUrl;
  String? commentsUrl;
  String? issueCommentUrl;
  String? contentsUrl;
  String? compareUrl;
  String? mergesUrl;
  String? archiveUrl;
  String? downloadsUrl;
  String? issuesUrl;
  String? pullsUrl;
  String? milestonesUrl;
  String? notificationsUrl;
  String? labelsUrl;
  String? releasesUrl;
  String? deploymentsUrl;

  Githubmodel({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.private,
    this.owner,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.forksUrl,
    this.keysUrl,
    this.collaboratorsUrl,
    this.teamsUrl,
    this.hooksUrl,
    this.issueEventsUrl,
    this.eventsUrl,
    this.assigneesUrl,
    this.branchesUrl,
    this.tagsUrl,
    this.blobsUrl,
    this.gitTagsUrl,
    this.gitRefsUrl,
    this.treesUrl,
    this.statusesUrl,
    this.languagesUrl,
    this.stargazersUrl,
    this.contributorsUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.commitsUrl,
    this.gitCommitsUrl,
    this.commentsUrl,
    this.issueCommentUrl,
    this.contentsUrl,
    this.compareUrl,
    this.mergesUrl,
    this.archiveUrl,
    this.downloadsUrl,
    this.issuesUrl,
    this.pullsUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.labelsUrl,
    this.releasesUrl,
    this.deploymentsUrl,
  });

  factory Githubmodel.fromJson(Map<String, dynamic> json) => Githubmodel(
        id: json['id'] as int?,
        nodeId: json['node_id'] as String?,
        name: json['name'] as String?,
        fullName: json['full_name'] as String?,
        private: json['private'] as bool?,
        owner: json['owner'] == null
            ? null
            : Owner.fromJson(json['owner'] as Map<String, dynamic>),
        htmlUrl: json['html_url'] as String?,
        description: json['description'] as String?,
        fork: json['fork'] as bool?,
        url: json['url'] as String?,
        forksUrl: json['forks_url'] as String?,
        keysUrl: json['keys_url'] as String?,
        collaboratorsUrl: json['collaborators_url'] as String?,
        teamsUrl: json['teams_url'] as String?,
        hooksUrl: json['hooks_url'] as String?,
        issueEventsUrl: json['issue_events_url'] as String?,
        eventsUrl: json['events_url'] as String?,
        assigneesUrl: json['assignees_url'] as String?,
        branchesUrl: json['branches_url'] as String?,
        tagsUrl: json['tags_url'] as String?,
        blobsUrl: json['blobs_url'] as String?,
        gitTagsUrl: json['git_tags_url'] as String?,
        gitRefsUrl: json['git_refs_url'] as String?,
        treesUrl: json['trees_url'] as String?,
        statusesUrl: json['statuses_url'] as String?,
        languagesUrl: json['languages_url'] as String?,
        stargazersUrl: json['stargazers_url'] as String?,
        contributorsUrl: json['contributors_url'] as String?,
        subscribersUrl: json['subscribers_url'] as String?,
        subscriptionUrl: json['subscription_url'] as String?,
        commitsUrl: json['commits_url'] as String?,
        gitCommitsUrl: json['git_commits_url'] as String?,
        commentsUrl: json['comments_url'] as String?,
        issueCommentUrl: json['issue_comment_url'] as String?,
        contentsUrl: json['contents_url'] as String?,
        compareUrl: json['compare_url'] as String?,
        mergesUrl: json['merges_url'] as String?,
        archiveUrl: json['archive_url'] as String?,
        downloadsUrl: json['downloads_url'] as String?,
        issuesUrl: json['issues_url'] as String?,
        pullsUrl: json['pulls_url'] as String?,
        milestonesUrl: json['milestones_url'] as String?,
        notificationsUrl: json['notifications_url'] as String?,
        labelsUrl: json['labels_url'] as String?,
        releasesUrl: json['releases_url'] as String?,
        deploymentsUrl: json['deployments_url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'node_id': nodeId,
        'name': name,
        'full_name': fullName,
        'private': private,
        'owner': owner?.toJson(),
        'html_url': htmlUrl,
        'description': description,
        'fork': fork,
        'url': url,
        'forks_url': forksUrl,
        'keys_url': keysUrl,
        'collaborators_url': collaboratorsUrl,
        'teams_url': teamsUrl,
        'hooks_url': hooksUrl,
        'issue_events_url': issueEventsUrl,
        'events_url': eventsUrl,
        'assignees_url': assigneesUrl,
        'branches_url': branchesUrl,
        'tags_url': tagsUrl,
        'blobs_url': blobsUrl,
        'git_tags_url': gitTagsUrl,
        'git_refs_url': gitRefsUrl,
        'trees_url': treesUrl,
        'statuses_url': statusesUrl,
        'languages_url': languagesUrl,
        'stargazers_url': stargazersUrl,
        'contributors_url': contributorsUrl,
        'subscribers_url': subscribersUrl,
        'subscription_url': subscriptionUrl,
        'commits_url': commitsUrl,
        'git_commits_url': gitCommitsUrl,
        'comments_url': commentsUrl,
        'issue_comment_url': issueCommentUrl,
        'contents_url': contentsUrl,
        'compare_url': compareUrl,
        'merges_url': mergesUrl,
        'archive_url': archiveUrl,
        'downloads_url': downloadsUrl,
        'issues_url': issuesUrl,
        'pulls_url': pullsUrl,
        'milestones_url': milestonesUrl,
        'notifications_url': notificationsUrl,
        'labels_url': labelsUrl,
        'releases_url': releasesUrl,
        'deployments_url': deploymentsUrl,
      };
}
