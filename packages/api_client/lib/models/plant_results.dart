class observations {
  int? totalResults;
  int? page;
  int? perPage;
  List<Results>? results;

  observations({this.totalResults, this.page, this.perPage, this.results});

  observations.fromJson(Map<String, dynamic> json) {
    totalResults = json['total_results'];
    page = json['page'];
    perPage = json['per_page'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_results'] = this.totalResults;
    data['page'] = this.page;
    data['per_page'] = this.perPage;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? id;
  int? cachedVotesTotal;
  bool? captive;
  List<Comments>? comments;
  int? commentsCount;
  String? createdAt;
  CreatedAtDetails? createdAtDetails;
  String? createdTimeZone;
  String? description;
  int? favesCount;
  Geojson? geojson;
  String? geoprivacy;
  String? taxonGeoprivacy;
  bool? idPlease;
  int? identificationsCount;
  bool? identificationsMostAgree;
  bool? identificationsMostDisagree;
  bool? identificationsSomeAgree;
  String? licenseCode;
  String? location;
  bool? mappable;
  List<NonOwnerIds>? nonOwnerIds;
  int? numIdentificationAgreements;
  int? numIdentificationDisagreements;
  bool? obscured;
  String? observedOn;
  CreatedAtDetails? observedOnDetails;
  String? observedOnString;
  String? observedTimeZone;
  List<Ofvs>? ofvs;
  bool? outOfRange;
  List<Photos>? photos;
  String? placeGuess;
  List<int>? placeIds;
  List<int>? projectIds;
  List<int>? projectIdsWithCuratorId;
  List<int>? projectIdsWithoutCuratorId;
  String? qualityGrade;
  List<int>? reviewedBy;
  int? siteId;
  List<Sounds>? sounds;
  String? speciesGuess;
  List<String>? tags;
  Taxon? taxon;
  String? timeObservedAt;
  String? timeZoneOffset;
  String? updatedAt;
  String? uri;
  User? user;
  bool? verifiable;

  Results(
      {this.id,
      this.cachedVotesTotal,
      this.captive,
      this.comments,
      this.commentsCount,
      this.createdAt,
      this.createdAtDetails,
      this.createdTimeZone,
      this.description,
      this.favesCount,
      this.geojson,
      this.geoprivacy,
      this.taxonGeoprivacy,
      this.idPlease,
      this.identificationsCount,
      this.identificationsMostAgree,
      this.identificationsMostDisagree,
      this.identificationsSomeAgree,
      this.licenseCode,
      this.location,
      this.mappable,
      this.nonOwnerIds,
      this.numIdentificationAgreements,
      this.numIdentificationDisagreements,
      this.obscured,
      this.observedOn,
      this.observedOnDetails,
      this.observedOnString,
      this.observedTimeZone,
      this.ofvs,
      this.outOfRange,
      this.photos,
      this.placeGuess,
      this.placeIds,
      this.projectIds,
      this.projectIdsWithCuratorId,
      this.projectIdsWithoutCuratorId,
      this.qualityGrade,
      this.reviewedBy,
      this.siteId,
      this.sounds,
      this.speciesGuess,
      this.tags,
      this.taxon,
      this.timeObservedAt,
      this.timeZoneOffset,
      this.updatedAt,
      this.uri,
      this.user,
      this.verifiable});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cachedVotesTotal = json['cached_votes_total'];
    captive = json['captive'];
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(new Comments.fromJson(v));
      });
    }
    commentsCount = json['comments_count'];
    createdAt = json['created_at'];
    createdAtDetails = json['created_at_details'] != null
        ? new CreatedAtDetails.fromJson(json['created_at_details'])
        : null;
    createdTimeZone = json['created_time_zone'];
    description = json['description'];
    favesCount = json['faves_count'];
    geojson =
        json['geojson'] != null ? new Geojson.fromJson(json['geojson']) : null;
    geoprivacy = json['geoprivacy'];
    taxonGeoprivacy = json['taxon_geoprivacy'];
    idPlease = json['id_please'];
    identificationsCount = json['identifications_count'];
    identificationsMostAgree = json['identifications_most_agree'];
    identificationsMostDisagree = json['identifications_most_disagree'];
    identificationsSomeAgree = json['identifications_some_agree'];
    licenseCode = json['license_code'];
    location = json['location'];
    mappable = json['mappable'];
    if (json['non_owner_ids'] != null) {
      nonOwnerIds = <NonOwnerIds>[];
      json['non_owner_ids'].forEach((v) {
        nonOwnerIds!.add(new NonOwnerIds.fromJson(v));
      });
    }
    numIdentificationAgreements = json['num_identification_agreements'];
    numIdentificationDisagreements = json['num_identification_disagreements'];
    obscured = json['obscured'];
    observedOn = json['observed_on'];
    observedOnDetails = json['observed_on_details'] != null
        ? new CreatedAtDetails.fromJson(json['observed_on_details'])
        : null;
    observedOnString = json['observed_on_string'];
    observedTimeZone = json['observed_time_zone'];
    if (json['ofvs'] != null) {
      ofvs = <Ofvs>[];
      json['ofvs'].forEach((v) {
        ofvs!.add(new Ofvs.fromJson(v));
      });
    }
    outOfRange = json['out_of_range'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(new Photos.fromJson(v));
      });
    }
    placeGuess = json['place_guess'];
    placeIds = json['place_ids'].cast<int>();
    projectIds = json['project_ids'].cast<int>();
    projectIdsWithCuratorId = json['project_ids_with_curator_id'].cast<int>();
    projectIdsWithoutCuratorId =
        json['project_ids_without_curator_id'].cast<int>();
    qualityGrade = json['quality_grade'];
    reviewedBy = json['reviewed_by'].cast<int>();
    siteId = json['site_id'];
    if (json['sounds'] != null) {
      sounds = <Sounds>[];
      json['sounds'].forEach((v) {
        sounds!.add(new Sounds.fromJson(v));
      });
    }
    speciesGuess = json['species_guess'];
    tags = json['tags'].cast<String>();
    taxon = json['taxon'] != null ? new Taxon.fromJson(json['taxon']) : null;
    timeObservedAt = json['time_observed_at'];
    timeZoneOffset = json['time_zone_offset'];
    updatedAt = json['updated_at'];
    uri = json['uri'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    verifiable = json['verifiable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cached_votes_total'] = this.cachedVotesTotal;
    data['captive'] = this.captive;
    if (this.comments != null) {
      data['comments'] = this.comments!.map((v) => v.toJson()).toList();
    }
    data['comments_count'] = this.commentsCount;
    data['created_at'] = this.createdAt;
    if (this.createdAtDetails != null) {
      data['created_at_details'] = this.createdAtDetails!.toJson();
    }
    data['created_time_zone'] = this.createdTimeZone;
    data['description'] = this.description;
    data['faves_count'] = this.favesCount;
    if (this.geojson != null) {
      data['geojson'] = this.geojson!.toJson();
    }
    data['geoprivacy'] = this.geoprivacy;
    data['taxon_geoprivacy'] = this.taxonGeoprivacy;
    data['id_please'] = this.idPlease;
    data['identifications_count'] = this.identificationsCount;
    data['identifications_most_agree'] = this.identificationsMostAgree;
    data['identifications_most_disagree'] = this.identificationsMostDisagree;
    data['identifications_some_agree'] = this.identificationsSomeAgree;
    data['license_code'] = this.licenseCode;
    data['location'] = this.location;
    data['mappable'] = this.mappable;
    if (this.nonOwnerIds != null) {
      data['non_owner_ids'] = this.nonOwnerIds!.map((v) => v.toJson()).toList();
    }
    data['num_identification_agreements'] = this.numIdentificationAgreements;
    data['num_identification_disagreements'] =
        this.numIdentificationDisagreements;
    data['obscured'] = this.obscured;
    data['observed_on'] = this.observedOn;
    if (this.observedOnDetails != null) {
      data['observed_on_details'] = this.observedOnDetails!.toJson();
    }
    data['observed_on_string'] = this.observedOnString;
    data['observed_time_zone'] = this.observedTimeZone;
    if (this.ofvs != null) {
      data['ofvs'] = this.ofvs!.map((v) => v.toJson()).toList();
    }
    data['out_of_range'] = this.outOfRange;
    if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    data['place_guess'] = this.placeGuess;
    data['place_ids'] = this.placeIds;
    data['project_ids'] = this.projectIds;
    data['project_ids_with_curator_id'] = this.projectIdsWithCuratorId;
    data['project_ids_without_curator_id'] = this.projectIdsWithoutCuratorId;
    data['quality_grade'] = this.qualityGrade;
    data['reviewed_by'] = this.reviewedBy;
    data['site_id'] = this.siteId;
    if (this.sounds != null) {
      data['sounds'] = this.sounds!.map((v) => v.toJson()).toList();
    }
    data['species_guess'] = this.speciesGuess;
    data['tags'] = this.tags;
    if (this.taxon != null) {
      data['taxon'] = this.taxon!.toJson();
    }
    data['time_observed_at'] = this.timeObservedAt;
    data['time_zone_offset'] = this.timeZoneOffset;
    data['updated_at'] = this.updatedAt;
    data['uri'] = this.uri;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['verifiable'] = this.verifiable;
    return data;
  }
}

class Comments {
  int? id;
  String? createdAt;
  CreatedAtDetails? createdAtDetails;
  User? user;

  Comments({this.id, this.createdAt, this.createdAtDetails, this.user});

  Comments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    createdAtDetails = json['created_at_details'] != null
        ? new CreatedAtDetails.fromJson(json['created_at_details'])
        : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    if (this.createdAtDetails != null) {
      data['created_at_details'] = this.createdAtDetails!.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class CreatedAtDetails {
  String? date;
  int? day;
  int? hour;
  int? month;
  int? week;
  int? year;

  CreatedAtDetails(
      {this.date, this.day, this.hour, this.month, this.week, this.year});

  CreatedAtDetails.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    day = json['day'];
    hour = json['hour'];
    month = json['month'];
    week = json['week'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['day'] = this.day;
    data['hour'] = this.hour;
    data['month'] = this.month;
    data['week'] = this.week;
    data['year'] = this.year;
    return data;
  }
}

class User {
  int? id;
  String? iconContentType;
  String? iconFileName;
  String? icon;
  String? iconUrl;
  String? login;
  String? name;

  User(
      {this.id,
      this.iconContentType,
      this.iconFileName,
      this.icon,
      this.iconUrl,
      this.login,
      this.name});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iconContentType = json['icon_content_type'];
    iconFileName = json['icon_file_name'];
    icon = json['icon'];
    iconUrl = json['icon_url'];
    login = json['login'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['icon_content_type'] = this.iconContentType;
    data['icon_file_name'] = this.iconFileName;
    data['icon'] = this.icon;
    data['icon_url'] = this.iconUrl;
    data['login'] = this.login;
    data['name'] = this.name;
    return data;
  }
}

class Geojson {
  String? type;
  List<int>? coordinates;

  Geojson({this.type, this.coordinates});

  Geojson.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['coordinates'] = this.coordinates;
    return data;
  }
}

class NonOwnerIds {
  int? id;
  String? body;
  String? createdAt;
  CreatedAtDetails? createdAtDetails;
  User? user;

  NonOwnerIds(
      {this.id, this.body, this.createdAt, this.createdAtDetails, this.user});

  NonOwnerIds.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    body = json['body'];
    createdAt = json['created_at'];
    createdAtDetails = json['created_at_details'] != null
        ? new CreatedAtDetails.fromJson(json['created_at_details'])
        : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['body'] = this.body;
    data['created_at'] = this.createdAt;
    if (this.createdAtDetails != null) {
      data['created_at_details'] = this.createdAtDetails!.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class Ofvs {
  String? name;
  String? value;

  Ofvs({this.name, this.value});

  Ofvs.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['value'] = this.value;
    return data;
  }
}

class Photos {
  int? id;
  String? attribution;
  String? licenseCode;
  String? url;

  Photos({this.id, this.attribution, this.licenseCode, this.url});

  Photos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attribution = json['attribution'];
    licenseCode = json['license_code'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['attribution'] = this.attribution;
    data['license_code'] = this.licenseCode;
    data['url'] = this.url;
    return data;
  }
}

class Sounds {
  int? id;
  String? attribution;
  String? licenseCode;

  Sounds({this.id, this.attribution, this.licenseCode});

  Sounds.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attribution = json['attribution'];
    licenseCode = json['license_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['attribution'] = this.attribution;
    data['license_code'] = this.licenseCode;
    return data;
  }
}

class Taxon {
  int? id;
  int? iconicTaxonId;
  String? iconicTaxonName;
  bool? isActive;
  String? name;
  String? preferredCommonName;
  String? rank;
  int? rankLevel;
  List<int>? ancestorIds;
  String? ancestry;
  ConservationStatus? conservationStatus;
  bool? endemic;
  EstablishmentMeans? establishmentMeans;
  bool? introduced;
  bool? native;
  bool? threatened;

  Taxon(
      {this.id,
      this.iconicTaxonId,
      this.iconicTaxonName,
      this.isActive,
      this.name,
      this.preferredCommonName,
      this.rank,
      this.rankLevel,
      this.ancestorIds,
      this.ancestry,
      this.conservationStatus,
      this.endemic,
      this.establishmentMeans,
      this.introduced,
      this.native,
      this.threatened});

  Taxon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iconicTaxonId = json['iconic_taxon_id'];
    iconicTaxonName = json['iconic_taxon_name'];
    isActive = json['is_active'];
    name = json['name'];
    preferredCommonName = json['preferred_common_name'];
    rank = json['rank'];
    rankLevel = json['rank_level'];
    ancestorIds = json['ancestor_ids'].cast<int>();
    ancestry = json['ancestry'];
    conservationStatus = json['conservation_status'] != null
        ? new ConservationStatus.fromJson(json['conservation_status'])
        : null;
    endemic = json['endemic'];
    establishmentMeans = json['establishment_means'] != null
        ? new EstablishmentMeans.fromJson(json['establishment_means'])
        : null;
    introduced = json['introduced'];
    native = json['native'];
    threatened = json['threatened'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['iconic_taxon_id'] = this.iconicTaxonId;
    data['iconic_taxon_name'] = this.iconicTaxonName;
    data['is_active'] = this.isActive;
    data['name'] = this.name;
    data['preferred_common_name'] = this.preferredCommonName;
    data['rank'] = this.rank;
    data['rank_level'] = this.rankLevel;
    data['ancestor_ids'] = this.ancestorIds;
    data['ancestry'] = this.ancestry;
    if (this.conservationStatus != null) {
      data['conservation_status'] = this.conservationStatus!.toJson();
    }
    data['endemic'] = this.endemic;
    if (this.establishmentMeans != null) {
      data['establishment_means'] = this.establishmentMeans!.toJson();
    }
    data['introduced'] = this.introduced;
    data['native'] = this.native;
    data['threatened'] = this.threatened;
    return data;
  }
}

class ConservationStatus {
  int? sourceId;
  String? authority;
  String? status;
  String? statusName;
  int? iucn;
  String? geoprivacy;

  ConservationStatus(
      {this.sourceId,
      this.authority,
      this.status,
      this.statusName,
      this.iucn,
      this.geoprivacy});

  ConservationStatus.fromJson(Map<String, dynamic> json) {
    sourceId = json['source_id'];
    authority = json['authority'];
    status = json['status'];
    statusName = json['status_name'];
    iucn = json['iucn'];
    geoprivacy = json['geoprivacy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source_id'] = this.sourceId;
    data['authority'] = this.authority;
    data['status'] = this.status;
    data['status_name'] = this.statusName;
    data['iucn'] = this.iucn;
    data['geoprivacy'] = this.geoprivacy;
    return data;
  }
}

class EstablishmentMeans {
  String? establishmentMeans;
  Place? place;

  EstablishmentMeans({this.establishmentMeans, this.place});

  EstablishmentMeans.fromJson(Map<String, dynamic> json) {
    establishmentMeans = json['establishment_means'];
    place = json['place'] != null ? new Place.fromJson(json['place']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['establishment_means'] = this.establishmentMeans;
    if (this.place != null) {
      data['place'] = this.place!.toJson();
    }
    return data;
  }
}

class Place {
  int? id;
  String? name;
  String? displayName;

  Place({this.id, this.name, this.displayName});

  Place.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    displayName = json['display_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['display_name'] = this.displayName;
    return data;
  }
}