class Results {
	String? qualityGrade;
	String? timeObservedAt;
	String? taxonGeoprivacy;
	List<Null>? annotations;
	String? uuid;
	ObservedOnDetails? observedOnDetails;
	int? id;
	int? cachedVotesTotal;
	bool? identificationsMostAgree;
	ObservedOnDetails? createdAtDetails;
	String? speciesGuess;
	bool? identificationsMostDisagree;
	List<Null>? tags;
	int? positionalAccuracy;
	int? commentsCount;
	int? siteId;
	String? createdTimeZone;
	String? licenseCode;
	String? observedTimeZone;
	List<Null>? qualityMetrics;
	int? publicPositionalAccuracy;
	List<int>? reviewedBy;
	int? oauthApplicationId;
	List<Null>? flags;
	String? createdAt;
	String? description;
	String? timeZoneOffset;
	List<Null>? projectIdsWithCuratorId;
	String? observedOn;
	String? observedOnString;
	String? updatedAt;
	List<Sounds>? sounds;
	List<int>? placeIds;
	bool? captive;
	Taxon? taxon;
	List<int>? identTaxonIds;
	List<Outlinks>? outlinks;
	int? favesCount;
	List<Null>? ofvs;
	int? numIdentificationAgreements;
	Preferences? preferences;
	List<Comments>? comments;
	Null? mapScale;
	String? uri;
	List<int>? projectIds;
	int? communityTaxonId;
	Geojson? geojson;
	bool? ownersIdentificationFromVision;
	int? identificationsCount;
	bool? obscured;
	int? numIdentificationDisagreements;
	Null? geoprivacy;
	String? location;
	List<Votes>? votes;
	bool? spam;
	User? user;
	bool? mappable;
	bool? identificationsSomeAgree;
	List<int>? projectIdsWithoutCuratorId;
	String? placeGuess;
	List<Identifications>? identifications;
	List<ProjectObservations>? projectObservations;
	List<ObservationSounds>? observationSounds;
	List<ObservationPhotos>? observationPhotos;
	List<Photos>? photos;
	List<Faves>? faves;
	List<NonOwnerIds>? nonOwnerIds;

	Results({this.qualityGrade, this.timeObservedAt, this.taxonGeoprivacy, this.annotations, this.uuid, this.observedOnDetails, this.id, this.cachedVotesTotal, this.identificationsMostAgree, this.createdAtDetails, this.speciesGuess, this.identificationsMostDisagree, this.tags, this.positionalAccuracy, this.commentsCount, this.siteId, this.createdTimeZone, this.licenseCode, this.observedTimeZone, this.qualityMetrics, this.publicPositionalAccuracy, this.reviewedBy, this.oauthApplicationId, this.flags, this.createdAt, this.description, this.timeZoneOffset, this.projectIdsWithCuratorId, this.observedOn, this.observedOnString, this.updatedAt, this.sounds, this.placeIds, this.captive, this.taxon, this.identTaxonIds, this.outlinks, this.favesCount, this.ofvs, this.numIdentificationAgreements, this.preferences, this.comments, this.mapScale, this.uri, this.projectIds, this.communityTaxonId, this.geojson, this.ownersIdentificationFromVision, this.identificationsCount, this.obscured, this.numIdentificationDisagreements, this.geoprivacy, this.location, this.votes, this.spam, this.user, this.mappable, this.identificationsSomeAgree, this.projectIdsWithoutCuratorId, this.placeGuess, this.identifications, this.projectObservations, this.observationSounds, this.observationPhotos, this.photos, this.faves, this.nonOwnerIds});

	Results.fromJson(Map<String, dynamic> json) {
		qualityGrade = json['quality_grade'];
		timeObservedAt = json['time_observed_at'];
		taxonGeoprivacy = json['taxon_geoprivacy'];
		if (json['annotations'] != null) {
			annotations = <Null>[];
			json['annotations'].forEach((v) { annotations!.add(new Null.fromJson(v)); });
		}
		uuid = json['uuid'];
		observedOnDetails = json['observed_on_details'] != null ? new ObservedOnDetails.fromJson(json['observed_on_details']) : null;
		id = json['id'];
		cachedVotesTotal = json['cached_votes_total'];
		identificationsMostAgree = json['identifications_most_agree'];
		createdAtDetails = json['created_at_details'] != null ? new ObservedOnDetails.fromJson(json['created_at_details']) : null;
		speciesGuess = json['species_guess'];
		identificationsMostDisagree = json['identifications_most_disagree'];
		if (json['tags'] != null) {
			tags = <Null>[];
			json['tags'].forEach((v) { tags!.add(new Null.fromJson(v)); });
		}
		positionalAccuracy = json['positional_accuracy'];
		commentsCount = json['comments_count'];
		siteId = json['site_id'];
		createdTimeZone = json['created_time_zone'];
		licenseCode = json['license_code'];
		observedTimeZone = json['observed_time_zone'];
		if (json['quality_metrics'] != null) {
			qualityMetrics = <Null>[];
			json['quality_metrics'].forEach((v) { qualityMetrics!.add(new Null.fromJson(v)); });
		}
		publicPositionalAccuracy = json['public_positional_accuracy'];
		reviewedBy = json['reviewed_by'].cast<int>();
		oauthApplicationId = json['oauth_application_id'];
		if (json['flags'] != null) {
			flags = <Null>[];
			json['flags'].forEach((v) { flags!.add(new Null.fromJson(v)); });
		}
		createdAt = json['created_at'];
		description = json['description'];
		timeZoneOffset = json['time_zone_offset'];
		if (json['project_ids_with_curator_id'] != null) {
			projectIdsWithCuratorId = <Null>[];
			json['project_ids_with_curator_id'].forEach((v) { projectIdsWithCuratorId!.add(new Null.fromJson(v)); });
		}
		observedOn = json['observed_on'];
		observedOnString = json['observed_on_string'];
		updatedAt = json['updated_at'];
		if (json['sounds'] != null) {
			sounds = <Sounds>[];
			json['sounds'].forEach((v) { sounds!.add(new Sounds.fromJson(v)); });
		}
		placeIds = json['place_ids'].cast<int>();
		captive = json['captive'];
		taxon = json['taxon'] != null ? new Taxon.fromJson(json['taxon']) : null;
		identTaxonIds = json['ident_taxon_ids'].cast<int>();
		if (json['outlinks'] != null) {
			outlinks = <Outlinks>[];
			json['outlinks'].forEach((v) { outlinks!.add(new Outlinks.fromJson(v)); });
		}
		favesCount = json['faves_count'];
		if (json['ofvs'] != null) {
			ofvs = <Null>[];
			json['ofvs'].forEach((v) { ofvs!.add(new Null.fromJson(v)); });
		}
		numIdentificationAgreements = json['num_identification_agreements'];
		preferences = json['preferences'] != null ? new Preferences.fromJson(json['preferences']) : null;
		if (json['comments'] != null) {
			comments = <Comments>[];
			json['comments'].forEach((v) { comments!.add(new Comments.fromJson(v)); });
		}
		mapScale = json['map_scale'];
		uri = json['uri'];
		projectIds = json['project_ids'].cast<int>();
		communityTaxonId = json['community_taxon_id'];
		geojson = json['geojson'] != null ? new Geojson.fromJson(json['geojson']) : null;
		ownersIdentificationFromVision = json['owners_identification_from_vision'];
		identificationsCount = json['identifications_count'];
		obscured = json['obscured'];
		numIdentificationDisagreements = json['num_identification_disagreements'];
		geoprivacy = json['geoprivacy'];
		location = json['location'];
		if (json['votes'] != null) {
			votes = <Votes>[];
			json['votes'].forEach((v) { votes!.add(new Votes.fromJson(v)); });
		}
		spam = json['spam'];
		user = json['user'] != null ? new User.fromJson(json['user']) : null;
		mappable = json['mappable'];
		identificationsSomeAgree = json['identifications_some_agree'];
		projectIdsWithoutCuratorId = json['project_ids_without_curator_id'].cast<int>();
		placeGuess = json['place_guess'];
		if (json['identifications'] != null) {
			identifications = <Identifications>[];
			json['identifications'].forEach((v) { identifications!.add(new Identifications.fromJson(v)); });
		}
		if (json['project_observations'] != null) {
			projectObservations = <ProjectObservations>[];
			json['project_observations'].forEach((v) { projectObservations!.add(new ProjectObservations.fromJson(v)); });
		}
		if (json['observation_sounds'] != null) {
			observationSounds = <ObservationSounds>[];
			json['observation_sounds'].forEach((v) { observationSounds!.add(new ObservationSounds.fromJson(v)); });
		}
		if (json['observation_photos'] != null) {
			observationPhotos = <ObservationPhotos>[];
			json['observation_photos'].forEach((v) { observationPhotos!.add(new ObservationPhotos.fromJson(v)); });
		}
		if (json['photos'] != null) {
			photos = <Photos>[];
			json['photos'].forEach((v) { photos!.add(new Photos.fromJson(v)); });
		}
		if (json['faves'] != null) {
			faves = <Faves>[];
			json['faves'].forEach((v) { faves!.add(new Faves.fromJson(v)); });
		}
		if (json['non_owner_ids'] != null) {
			nonOwnerIds = <NonOwnerIds>[];
			json['non_owner_ids'].forEach((v) { nonOwnerIds!.add(new NonOwnerIds.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['quality_grade'] = this.qualityGrade;
		data['time_observed_at'] = this.timeObservedAt;
		data['taxon_geoprivacy'] = this.taxonGeoprivacy;
		if (this.annotations != null) {
      data['annotations'] = this.annotations!.map((v) => v.toJson()).toList();
    }
		data['uuid'] = this.uuid;
		if (this.observedOnDetails != null) {
      data['observed_on_details'] = this.observedOnDetails!.toJson();
    }
		data['id'] = this.id;
		data['cached_votes_total'] = this.cachedVotesTotal;
		data['identifications_most_agree'] = this.identificationsMostAgree;
		if (this.createdAtDetails != null) {
      data['created_at_details'] = this.createdAtDetails!.toJson();
    }
		data['species_guess'] = this.speciesGuess;
		data['identifications_most_disagree'] = this.identificationsMostDisagree;
		if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
		data['positional_accuracy'] = this.positionalAccuracy;
		data['comments_count'] = this.commentsCount;
		data['site_id'] = this.siteId;
		data['created_time_zone'] = this.createdTimeZone;
		data['license_code'] = this.licenseCode;
		data['observed_time_zone'] = this.observedTimeZone;
		if (this.qualityMetrics != null) {
      data['quality_metrics'] = this.qualityMetrics!.map((v) => v.toJson()).toList();
    }
		data['public_positional_accuracy'] = this.publicPositionalAccuracy;
		data['reviewed_by'] = this.reviewedBy;
		data['oauth_application_id'] = this.oauthApplicationId;
		if (this.flags != null) {
      data['flags'] = this.flags!.map((v) => v.toJson()).toList();
    }
		data['created_at'] = this.createdAt;
		data['description'] = this.description;
		data['time_zone_offset'] = this.timeZoneOffset;
		if (this.projectIdsWithCuratorId != null) {
      data['project_ids_with_curator_id'] = this.projectIdsWithCuratorId!.map((v) => v.toJson()).toList();
    }
		data['observed_on'] = this.observedOn;
		data['observed_on_string'] = this.observedOnString;
		data['updated_at'] = this.updatedAt;
		if (this.sounds != null) {
      data['sounds'] = this.sounds!.map((v) => v.toJson()).toList();
    }
		data['place_ids'] = this.placeIds;
		data['captive'] = this.captive;
		if (this.taxon != null) {
      data['taxon'] = this.taxon!.toJson();
    }
		data['ident_taxon_ids'] = this.identTaxonIds;
		if (this.outlinks != null) {
      data['outlinks'] = this.outlinks!.map((v) => v.toJson()).toList();
    }
		data['faves_count'] = this.favesCount;
		if (this.ofvs != null) {
      data['ofvs'] = this.ofvs!.map((v) => v.toJson()).toList();
    }
		data['num_identification_agreements'] = this.numIdentificationAgreements;
		if (this.preferences != null) {
      data['preferences'] = this.preferences!.toJson();
    }
		if (this.comments != null) {
      data['comments'] = this.comments!.map((v) => v.toJson()).toList();
    }
		data['map_scale'] = this.mapScale;
		data['uri'] = this.uri;
		data['project_ids'] = this.projectIds;
		data['community_taxon_id'] = this.communityTaxonId;
		if (this.geojson != null) {
      data['geojson'] = this.geojson!.toJson();
    }
		data['owners_identification_from_vision'] = this.ownersIdentificationFromVision;
		data['identifications_count'] = this.identificationsCount;
		data['obscured'] = this.obscured;
		data['num_identification_disagreements'] = this.numIdentificationDisagreements;
		data['geoprivacy'] = this.geoprivacy;
		data['location'] = this.location;
		if (this.votes != null) {
      data['votes'] = this.votes!.map((v) => v.toJson()).toList();
    }
		data['spam'] = this.spam;
		if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
		data['mappable'] = this.mappable;
		data['identifications_some_agree'] = this.identificationsSomeAgree;
		data['project_ids_without_curator_id'] = this.projectIdsWithoutCuratorId;
		data['place_guess'] = this.placeGuess;
		if (this.identifications != null) {
      data['identifications'] = this.identifications!.map((v) => v.toJson()).toList();
    }
		if (this.projectObservations != null) {
      data['project_observations'] = this.projectObservations!.map((v) => v.toJson()).toList();
    }
		if (this.observationSounds != null) {
      data['observation_sounds'] = this.observationSounds!.map((v) => v.toJson()).toList();
    }
		if (this.observationPhotos != null) {
      data['observation_photos'] = this.observationPhotos!.map((v) => v.toJson()).toList();
    }
		if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
		if (this.faves != null) {
      data['faves'] = this.faves!.map((v) => v.toJson()).toList();
    }
		if (this.nonOwnerIds != null) {
      data['non_owner_ids'] = this.nonOwnerIds!.map((v) => v.toJson()).toList();
    }
		return data;
	}
}