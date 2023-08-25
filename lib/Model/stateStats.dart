class StatesStats {
  StatesStats({
    required this.data,
    required this.source,
  });
  late final List<Data> data;
  late final List<Source> source;

  StatesStats.fromJson(Map<String, dynamic> json){
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
    source = List.from(json['source']).map((e)=>Source.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e)=>e.toJson()).toList();
    _data['source'] = source.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id_state,
    required this.state,
    required this.id_year,
    required this.year,
    required this.population,
    required this.slugState,
  });
  late final String id_state;
  late final String state;
  late final int id_year;
  late final String year;
  late final int population;
  late final String slugState;

  Data.fromJson(Map<String, dynamic> json){
    id_state = json['ID State'];
    state = json['State'];
    id_year = json['ID Year'];
    year = json['Year'];
    population = json['Population'];
    slugState = json['Slug State'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ID State'] = id_state;
    _data['State'] = state;
    _data['ID Year'] = id_year;
    _data['Year'] = year;
    _data['Population'] = population;
    _data['Slug State'] = slugState;
    return _data;
  }
}

class Source {
  Source({
    required this.measures,
    required this.annotations,
    required this.name,
    required this.substitutions,
  });
  late final List<String> measures;
  late final Annotations annotations;
  late final String name;
  late final List<dynamic> substitutions;

  Source.fromJson(Map<String, dynamic> json){
    measures = List.castFrom<dynamic, String>(json['measures']);
    annotations = Annotations.fromJson(json['annotations']);
    name = json['name'];
    substitutions = List.castFrom<dynamic, dynamic>(json['substitutions']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['measures'] = measures;
    _data['annotations'] = annotations.toJson();
    _data['name'] = name;
    _data['substitutions'] = substitutions;
    return _data;
  }
}

class Annotations {
  Annotations({
    required this.sourceName,
    required this.sourceDescription,
    required this.datasetName,
    required this.datasetLink,
    required this.tableId,
    required this.topic,
    required this.subtopic,
  });
  late final String sourceName;
  late final String sourceDescription;
  late final String datasetName;
  late final String datasetLink;
  late final String tableId;
  late final String topic;
  late final String subtopic;

  Annotations.fromJson(Map<String, dynamic> json){
    sourceName = json['source_name'];
    sourceDescription = json['source_description'];
    datasetName = json['dataset_name'];
    datasetLink = json['dataset_link'];
    tableId = json['table_id'];
    topic = json['topic'];
    subtopic = json['subtopic'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['source_name'] = sourceName;
    _data['source_description'] = sourceDescription;
    _data['dataset_name'] = datasetName;
    _data['dataset_link'] = datasetLink;
    _data['table_id'] = tableId;
    _data['topic'] = topic;
    _data['subtopic'] = subtopic;
    return _data;
  }
}