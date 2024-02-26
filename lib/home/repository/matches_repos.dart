// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Matches {
  int matchID;
  int playerNumbers;
  int TeamNumbers;
  String PlayerNames;
  Matches({
    required this.matchID,
    required this.playerNumbers,
    required this.TeamNumbers,
    required this.PlayerNames,
  });

  Matches copyWith({
    int? matchID,
    int? playerNumbers,
    int? TeamNumbers,
    String? PlayerNames,
  }) {
    return Matches(
      matchID: matchID ?? this.matchID,
      playerNumbers: playerNumbers ?? this.playerNumbers,
      TeamNumbers: TeamNumbers ?? this.TeamNumbers,
      PlayerNames: PlayerNames ?? this.PlayerNames,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchID': matchID,
      'playerNumbers': playerNumbers,
      'TeamNumbers': TeamNumbers,
      'PlayerNames': PlayerNames,
    };
  }

  factory Matches.fromMap(Map<String, dynamic> map) {
    return Matches(
      matchID: map['matchID'] as int,
      playerNumbers: map['playerNumbers'] as int,
      TeamNumbers: map['TeamNumbers'] as int,
      PlayerNames: map['PlayerNames'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Matches.fromJson(String source) =>
      Matches.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Matches(matchID: $matchID, playerNumbers: $playerNumbers, TeamNumbers: $TeamNumbers, PlayerNames: $PlayerNames)';
  }

  @override
  bool operator ==(covariant Matches other) {
    if (identical(this, other)) return true;

    return other.matchID == matchID &&
        other.playerNumbers == playerNumbers &&
        other.TeamNumbers == TeamNumbers &&
        other.PlayerNames == PlayerNames;
  }

  @override
  int get hashCode {
    return matchID.hashCode ^
        playerNumbers.hashCode ^
        TeamNumbers.hashCode ^
        PlayerNames.hashCode;
  }
}
